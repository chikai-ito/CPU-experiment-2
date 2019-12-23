`default_nettype none

module top #(CLK_PER_HALF_BIT = 520) (
    input wire clk,
    input wire rstn,
    
    // UART通信の入力データ
    input wire [7:0] r_data,

    // UART通信の出力データ
    output wire [7:0] w_data,

    // UART入力をしてもいいですか？
    input wire receiver_valid,

    // UART出力中です
    input wire sender_sending,

    // UART出力する準備が整いました
    output wire sender_ready,

    // デバッグ用のLED出力
    output wire [7:0] out_led,

    // メモリで読み出したデータ
    input wire [31:0] read_data,

    // メモリ読み込み・書き込みに用いるアドレス
    output wire [19:0] memory_addr,

    // メモリに書き込むデータ
    output wire [31:0] write_data,
    output reg [3:0] err_pc,
    output wire we);

	localparam inst_size	 = 15000;
	localparam buffer_size	 = 5000;

	// 状態変数
	// 1:フェッチ 2:デコード 3:実行1 4:実行2 5:実行3 6:格納
	reg [3:0]             status;
    localparam s_idle = 0;
    localparam s_1 = 1;
    localparam s_2 = 2;
    localparam s_3 = 3;
    localparam s_4 = 4;
    localparam s_5 = 5;
    localparam s_6 = 6;

    reg [3:0]             err;
    
    // retを読み終わったか？
    // もし読み終わっているならもう何もしない
    reg                   inst_stop;

    // 命令コード一覧
    localparam special  	= 6'b000000;
    localparam s_add 		= 6'b100000;
    localparam s_sub        = 6'b100010;
    localparam s_mult       = 6'b011001;
    localparam s_div        = 6'b011010;
    localparam s_mod        = 6'b011011;
    localparam s_mov        = 6'b001001;
    localparam s_retl		= 6'b111111;
    localparam s_jr			= 6'b001000;
    localparam s_ret        = 6'b000000;
    localparam s_in         = 6'b101010;
    localparam s_fin		= 6'b111010;
    localparam s_out        = 6'b010101;
    localparam j			= 6'b000010;
    localparam addi     	= 6'b001000;
    localparam lw       	= 6'b100011;
    localparam ilw			= 6'b101111;
    localparam sw       	= 6'b101011;
    localparam lws			= 6'b100100;
    localparam ilws			= 6'b100111;
    localparam sws			= 6'b101100;
    localparam cop1         = 6'b010001;
    localparam f_others     = 5'b10000;
    localparam f_mfc1		= 5'b00000;
    localparam f_mtc1		= 5'b00100;
    localparam beq			= 6'b000100;
    localparam jal			= 6'b011000;
    localparam jalr			= 6'b111000;
    localparam bne 			= 6'b000101;
    localparam bl			= 6'b000001;
    localparam bg 			= 6'b000110;
    localparam fbne			= 6'b000011;
    localparam fbg			= 6'b000111;
    localparam sll 			= 6'b111111;

    // レジスタ
    reg [31:0] register_int [0:31];
    reg [31:0] register_float [0:31];

    // プログラムカウンタ
    reg [31:0] pc;

    // 命令メモリ
    reg [31:0] inst [0:inst_size-1];

    // 今読んでいる命令
    reg [31:0] now_inst;

    // *****************
    // バッファ
    // 入力データを格納する
    reg [7:0] buffer [0:buffer_size];

    // バッファの中でデータが入力されている部分
    reg [31:0] buffer_valid_idx;

    // バッファの中でコアが読み終えている部分
    reg [31:0] buffer_reading_idx;

    // 各命令について、またなければいけないクロック数分待つための変数
    reg [3:0] complete;

    //*******************
    //FPU modules

    wire ovf;
    wire [31:0] f_result;
    wire [3:0] f_exception;
    wire fequal_res;
    wire fless_res;
    wire [31:0] immediate;
    wire [31:0] minus_immediate;
    
    wire [31:0] f_argument;
    
    // 即値として何を用いるか
    assign immediate = (now_inst[15:15] == 1'b1) ? (32'b11111111111111110000000000000000 + now_inst[15:0]) : (now_inst[15:0]);
    assign minus_immediate = (now_inst[15:15] == 1'b1) ? (32'b11111111111111110000000000000001 + now_inst[15:0]) : (now_inst[15:0] - 1);
    
    // FPUに渡す引数
    assign f_argument = (now_inst[31:26] == cop1 && now_inst[25:21] == f_mtc1) ? (register_int[now_inst[20:16]]) : (register_float[now_inst[20:16]]);
    
    // メインFPU
    fpu1 fpu11(
        now_inst[31:26],
        now_inst[25:21],
        register_float[now_inst[15:11]],
        f_argument,
        now_inst[5:0],
        f_result,
        f_exception
    );

    // fequal(fbne用)
    fequal fequall(
    	register_float[now_inst[25:21]],
    	register_float[now_inst[20:16]],
    	fequal_res
    	);

    // fless(fbg用)
    fless flessl(
    	register_float[now_inst[20:16]],
    	register_float[now_inst[25:21]],
    	fless_res
    	);
    
    // ********************

    integer i;

    // 32bit分のデータは4バイト分のreadによって完了する
    // 何バイト目を読んでいるか
    reg [1:0] writing_byte;

    // 最初に送るバイトを送り終えたなら0
    reg first_send;
    
    // write-enable
    assign we = (now_inst[31:26] == sw || now_inst[31:26] == sws) && (status == s_1);
    
    // 読み出し・書き出しに使うメモリアドレス
    assign memory_addr = register_int[now_inst[25:21]][31:2] + immediate[31:2];
    
    // メモリ書き込みに用いるデータ
    assign write_data = (now_inst[31:26] == sw) ? register_int[now_inst[20:16]] : register_float[now_inst[20:16]];
    
    // UART出力用のフラグ　これが立っていたら通信を開始
    assign sender_ready = (now_inst[31:26] == special &&
                           now_inst[5:0] == s_out) || first_send;

    // RSレジスタ
    reg [31:0] argument1;
    // RTレジスタ
    reg [31:0] argument2;
    // 分岐用レジスタ
    reg [31:0] argument3;

    // 演算結果
    reg [31:0] result;

    // 分岐命令フラグ
    reg jump;

    initial begin
        // 各種初期化
        buffer_valid_idx <= 32'b0;
        buffer_reading_idx <= 32'b0;
        for(i=0;i<32;i=i+1) begin
            register_int[i] <= 32'b0;
            register_float[i] <= 32'b0;
        end
        register_int[27] <= 32'b00000000000000001000000000000000;
        inst_stop <= 1'b0;
    	status <= s_1;
    	complete <= 4'b0;
    	pc <= 32'b0;
    	$readmemb("copy.mem", inst);
    end
    
    // LEDに表示したいものをここでassignする
    assign out_led = pc;

    reg ferr;

    // 最初に送るのは決まったバイト、そうでなければ指定されたバイト
    assign w_data = (first_send) ? 8'b10101010 : register_int[now_inst[25:21]][7:0];

    // 一つのデータを連続して読まないように立てるフラグ
    // 読むのを開始した瞬間に立てて、データが来なくなったら下ろす
    reg reading;

    // in命令で4バイト分の入力が終わっているか？
    reg finished_write;



    always @(posedge clk) begin
        if (first_send && status == s_2) begin
            first_send <= 1'b0;
        end
        if (receiver_valid && !reading) begin
            buffer[buffer_valid_idx] <= r_data;
            buffer_valid_idx <= buffer_valid_idx + 1;
            reading <= 1'b1;
        end else if(!receiver_valid) begin 
        	reading <= 1'b0;
        end
        if (~rstn) begin
            finished_write <= 1'b0;
            first_send <= 1'b1;
            writing_byte <= 2'b0;
        	reading <= 1'b0;
            for(i=0;i<32;i=i+1) begin
                register_int[i] <= 32'b0;
                register_float[i] <= 32'b0;
            end
            buffer_valid_idx <= 32'b0;
            buffer_reading_idx <= 32'b0;
            register_int[27] <= 32'b00000000000000001000000000000000;
            inst_stop <= 1'b0;
            status <= s_1;
            err <= 4'b0000;
            complete <= 4'b0000;
            pc <= 0;
    	    $readmemb("copy.mem", inst);
        end else if (status == s_idle) begin

        end else if (status == s_1) begin
            // フェッチフェーズ

            if (inst_stop == 1'b0) begin
            	now_inst <= inst[pc];
            	// プログラムカウンタは常に次の命令の値を格納している
            	// そのため、相対的にジャンプするときには注意が必要
            	pc <= pc + 1;
                
                // 分岐命令フラグはtrueにしか更新しないため、
                // ここで初期化しておく 
                jump <= 1'b0;
            end else begin
                status <= s_idle;
            end

        	status <= s_2;

        end else if (status == s_2) begin
            // デコードフェーズ
            case (now_inst[31:26])
                // special命令群の実行
                special:
                    case (now_inst[5:0])
                        s_add, s_sub, s_mult, s_div, s_mod: begin
                            argument1 <= register_int[now_inst[25:21]];
                            argument2 <= register_int[now_inst[20:16]];
                        end
                        s_mov:

                        s_retl:
                            jump <= 1'b1;
                            argument3 <= register_int[28];
                        s_jr:
                            jump <= 1'b1;
                            argument3 <= register_int[now_inst[25:21]];
                        s_ret:
                        s_in:
                        s_fin:

                    endcase // now_inst[5:0]
                cop1:
                addi:
                lw:
                ilw:
                lws:
                ilws:
                j: begin
                    jump <= 1'b1;
                    argument3 <= {6'b0, now_inst[25:0]};
                end
                beq, bne, bl, bg: begin
                    jump <= 1'b1;
                    argument1 <= register_int[now_inst[25:21]];
                    argument2 <= register_int[now_inst[20:16]];
                    argument3 <= pc + {16'b0, now_inst[15:0]};
                end
                jal: begin
                    jump <= 1'b1;
                    register_int[28] <= pc;
                    argument3 <= {6'b0, now_inst[25:0]};
                end
                jalr: begin
                    jump <= 1'b1;
                    register_int[28] <= pc;
                    argument3 <= register_int[now_inst[25:21]];
                end
                fbne:
                fbg:
                sll:
            endcase // now_inst[31:26]

            status <= s_3;

        end else if (status == s_3) begin
            // 実行フェーズその1
            case (now_inst[31:26])
                // special命令群の実行
                special:
                    case (now_inst[5:0])
                        s_add:
                            result <= argument1 + argument2;
                        s_sub:
                            result <= argument1 - argument2;
                        s_mult:
                            result <= argument1 * argument2;
                        s_div:
                            result <= argument1 / argument2;
                        s_mod:
                            result <= argument1 % argument2;
                        s_mov:
                            result <= register_int[now_inst[25:21]];
                        s_retl:
                            result <= argument3;
                        s_jr:
                            result <= argument3;
                        s_ret:
                        s_in:
                        s_fin:

                    endcase // now_inst[5:0]
                cop1:
                addi:
                lw:
                ilw:
                lws:
                ilws:
                j: begin
                    result <= argument3;
                end
                beq: begin
                    if (argument1 == argument2) begin
                        result <= argument3;
                    else begin
                        result <= pc;
                    end
                end
                jal: begin
                    result <= argument3;
                end
                jalr: begin
                    result <= argument3;
                end
                bne: begin
                    if (argument1 != argument2) begin
                        result <= argument3;
                    else begin
                        result <= pc;
                    end
                end
                bl: begin
                    if (argument1 < argument2) begin
                        result <= argument3;
                    else begin
                        result <= pc;
                    end
                end
                bg: begin
                    if(argument1 > argument2) begin
                        result <= argument3;
                    else begin
                        result <= pc;
                    end
                end
                fbne:
                fbg:
                sll:
            endcase // now_inst[31:26]

            status <= s_4;

        end else if (status == s_4) begin
            // 実行フェーズその2
            if (flag) begin
                pc <= result;
                status <= s_1;
            end else begin
                case (now_inst[31:26])
                    // special命令群の実行
                    special:
                        case (now_inst[5:0])
                            s_mov:
                                register_int[now_inst[20:16]] <= result;
                            s_ret:
                            s_in:
                            s_fin:

                        endcase // now_inst[5:0]
                    cop1:
                    addi:
                    lw:
                    ilw:
                    lws:
                    ilws:
                    jal:
                    jalr:
                    fbne:
                    fbg:
                    sll:
                endcase // now_inst[31:26]
                status <= s_5;
            end

        end else if (status == s_5) begin
            // 実行フェーズその3
        end else begin
            // 格納フェーズ
            case (now_inst[31:26])
                // special命令群の実行
                special:
                    case (now_inst[5:0])
                        s_add, s_sub, s_mult, s_div, s_mod:
                            register_int[now_inst[15:11]] <= result;
                        s_mov:
                        s_retl:
                        s_jr:
                        s_ret:
                        s_in:
                        s_fin:

                    endcase // now_inst[5:0]
                cop1:
                addi:
                lw:
                ilw:
                lws:
                ilws:
                j:
                beq:
                jal:
                jalr:
                bne:
                bl:
                bg:
                fbne:
                fbg:
                sll:
            endcase // now_inst[31:26]

    end
   
endmodule
`default_nettype wire