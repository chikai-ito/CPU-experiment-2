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

	localparam inst_size	 = 5000;
	localparam buffer_size	 = 5000;

    localparam s_idle = 0;
    localparam s_1 = 1;
    localparam s_2 = 2;
    localparam s_3 = 3;
    localparam s_4 = 4;
    localparam s_5 = 5;
    localparam s_6 = 6;

    reg [3:0]             err;

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
    localparam ble			= 6'b001011;
    localparam bge 			= 6'b001001;


    // レジスタ
    reg [31:0] register_int [0:31];
    reg [31:0] register_float [0:31];

    // プログラムカウンタ
    reg [31:0] pc;

    // 命令メモリ
    reg [31:0] inst [0:inst_size-1];

    // 今読んでいる命令

    // *****************
    // バッファ
    // 入力データを格納する
    reg [7:0] buffer [0:buffer_size];

    // バッファの中でデータが入力されている部分
    reg [31:0] buffer_valid_idx;

    // バッファの中でコアが読み終えている部分
    reg [31:0] buffer_reading_idx;

    // 6クロック命令のためにパイプラインがストールするための時間
    reg [2:0] waiting;

    integer i;

    // 32bit分のデータは4バイト分のreadによって完了する
    // 何バイト目を読んでいるか
    reg [1:0] writing_byte;

    // 最初に送るバイトを送り終えたなら0
    reg first_send;
   
    // RSレジスタ
    reg [31:0] argument1 [0:4];
    // RTレジスタ
    reg [31:0] argument2 [0:4];
    // 分岐用レジスタ
    reg [31:0] argument3 [0:4];

    reg [31:0] iteration;

    // 演算結果
    reg [31:0] result [0:4];
    // 終了処理
    reg inst_stop;

    // 伝搬する命令
    reg [31:0] instr_reg [0:4];

    // 伝搬するプログラムカウンタ
    reg [31:0] prop_pc [0:4];

    // レジスタの値がいま計算中であるかどうかを保持するフラグ
    reg [31:0] int_data_flag;
    reg [31:0] float_data_flag;

    // 伝搬する命令有効フラグ
    reg [5:0] validate_flag;

    //*******************
    //FPU modules

    /*

    wire ovf;
    wire [31:0] f_result;
    wire [3:0] f_exception;
    wire fequal_res;
    wire fless_res;


    wire [31:0] f_argument;

    */ 
    wire [31:0] immediate;
    wire [31:0] minus_immediate;
    
    
    // 即値として何を用いるか
    assign immediate = (instr_reg[0][15:15] == 1'b1) ? (32'b11111111111111110000000000000000 + instr_reg[0][15:0]) : (instr_reg[0][15:0]);
    assign minus_immediate = (instr_reg[0][15:15] == 1'b1) ? (32'b11111111111111110000000000000001 + instr_reg[0][15:0]) : (instr_reg[0][15:0] - 1);
    
    /* 
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

    */
    
    // ********************

    

     // write-enable
    assign we = (instr_reg[0][31:26] == sw || instr_reg[0][31:26] == sws);
    
    // 読み出し・書き出しに使うメモリアドレス
    assign memory_addr = register_int[instr_reg[0][25:21]][31:2] + immediate[31:2];
    
    // メモリ書き込みに用いるデータ
    assign write_data = (instr_reg[0][31:26] == sw) ? register_int[instr_reg[0][20:16]] : register_float[instr_reg[0][20:16]];
    
    // UART出力用のフラグ　これが立っていたら通信を開始
    // assign sender_ready = (now_inst[31:26] == special &&
    //                        now_inst[5:0] == s_out) || first_send;

    initial begin
        // 各種初期化
        inst_stop <= 1'b0;
        iteration <= 32'b0;
        buffer_valid_idx <= 32'b0;
        buffer_reading_idx <= 32'b0;
        for(i=0;i<32;i=i+1) begin
            register_int[i] <= 32'b0;
            register_float[i] <= 32'b0;
            int_data_flag[i] <= 1'b0;
            float_data_flag[i] <= 1'b0;
        end
        for(i=0;i<5;i=i+1) begin
        	result[i] <= 32'b0;
        	argument1[i] <= 32'b0;
        	argument2[i] <= 32'b0;
        	argument3[i] <= 32'b0;
        	prop_pc[i] <= 32'b0;
        	validate_flag[i] <= 1'b0;
        end
        waiting <= 0;
        register_int[27] <= 32'b00000000000000001000000000000000;
    	pc <= 32'b0;
    	$readmemb("copy.mem", inst);
    end
    
    // LEDに表示したいものをここでassignする
    assign out_led = register_int[1];

    reg ferr;

    // 最初に送るのは決まったバイト、そうでなければ指定されたバイト
    // assign w_data = (first_send) ? 8'b10101010 : register_int[now_inst[25:21]][7:0];

    // 一つのデータを連続して読まないように立てるフラグ
    // 読むのを開始した瞬間に立てて、データが来なくなったら下ろす
    reg reading;

    // in命令で4バイト分の入力が終わっているか？
    reg finished_write;

    reg stallflag;

    reg out;

    always @(posedge clk) begin
    	/*
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
        */
        if (~rstn) begin
            inst_stop <= 1'b0;
	        iteration <= 32'b0;
	        buffer_valid_idx <= 32'b0;
	        buffer_reading_idx <= 32'b0;
	        for(i=0;i<32;i=i+1) begin
	            register_int[i] <= 32'b0;
	            register_float[i] <= 32'b0;
	            int_data_flag[i] <= 1'b0;
	            float_data_flag[i] <= 1'b0;
	        end
	        for(i=0;i<5;i=i+1) begin
	        	result[i] <= 32'b0;
	        	argument1[i] <= 32'b0;
	        	argument2[i] <= 32'b0;
	        	argument3[i] <= 32'b0;
	        	prop_pc[i] <= 32'b0;
	        	validate_flag[i] <= 1'b0;
	        end
	        waiting <= 0;
	        register_int[27] <= 32'b00000000000000001000000000000000;
	    	pc <= 32'b0;
	    	$readmemb("copy.mem", inst);
    	end else if (~inst_stop) begin
    		// パイプライン実装

    		// ********************
    		// フェッチフェーズ
    		// ********************

    		if (waiting == 3'b0) begin

	    		instr_reg[0] <= inst[pc];
	    		prop_pc[0] <= pc;
	    		validate_flag[0] <= 1'b1;

	    		
				// pcの値を分岐するように予測します
	    		if (inst[pc][31:26] == j) begin
	    			pc <= {6'b0, inst[pc][25:0]};
	    		end else if (inst[pc][31:26] == beq) begin
	    			pc <= pc + {{16{inst[pc][15]}}, inst[pc][15:0]};

	    		end else if (inst[pc][31:26] == bl) begin
	    			pc <= pc + {{16{inst[pc][15]}}, inst[pc][15:0]};

	    		end else if (inst[pc][31:26] == bg) begin
	    			pc <= pc + {{16{inst[pc][15]}}, inst[pc][15:0]};

	    		end else if (inst[pc][31:26] == special && inst[pc][5:0] == s_jr) begin
	    			if (int_data_flag[inst[pc][25:21]]) begin
	    				// Read After Writeハザードが発生
	    				// パイプラインの伝搬を１つ遅らせる
	    				validate_flag[0] <= 1'b0;
	    				pc <= pc;
	    			end else begin
	    				pc <= register_int[inst[pc][25:21]];
    				end

    			end else if (inst[pc][31:26] == special && inst[pc][5:0] == s_retl) begin
    				if (int_data_flag[28]) begin
    					validate_flag[0] <= 1'b0;
    					pc <= pc;
    				end else begin
    					pc <= register_int[28] + 1;
    				end

	    		end else if (inst[pc][31:26] == jalr) begin
	    			if (int_data_flag[inst[pc][25:21]]) begin

	    				validate_flag[0] <= 1'b0;
	    				pc <= pc;
	    			end else begin
	    				pc <= register_int[inst[pc][25:21]];
	    			end

	    		end else if (inst[pc][31:26] == jal) begin
	    			pc <= {6'b0, inst[pc][25:0]};

	    		end else begin
	    			pc <= pc + 1;
	    		end
	    	end else begin
	    		waiting <= waiting - 1;
	    	end

    		iteration <= iteration + 1;

    		// ********************
    		// デコードフェーズ
    		// ********************

    		stallflag = 0;

    		case (instr_reg[0][31:26])
    			special:
    				case (instr_reg[0][5:0])
    					s_add, s_sub, s_mult, s_div: begin
                            argument1[1] <= register_int[instr_reg[0][25:21]];
                            argument2[1] <= register_int[instr_reg[0][20:16]];
                            stallflag = int_data_flag[instr_reg[0][25:21]] | int_data_flag[instr_reg[0][20:16]];
                            if (~stallflag) begin
								int_data_flag[instr_reg[0][15:11]] <= 1'b1;
							end
                        end
                        s_mov: begin
                        	argument1[1] <= register_int[instr_reg[0][25:21]];
                        	stallflag = int_data_flag[instr_reg[0][25:21]];
                        	if (~stallflag) begin
		                    	int_data_flag[instr_reg[0][20:16]] <= 1'b1;
		                    end
                        end
                        //s_in:
                        //s_fin:
                    endcase // instr_reg[0][5:0]
                lw: begin
                	stallflag = int_data_flag[instr_reg[0][25:21]];
                	if (~stallflag) begin

                		int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                	end
                end
                addi: begin
                    argument1[1] <= register_int[instr_reg[0][25:21]];
                    argument2[1] <= {{16{instr_reg[0][15]}}, instr_reg[0][15:0]};
                    stallflag = int_data_flag[instr_reg[0][25:21]];
                    if (~stallflag) begin
                		int_data_flag[instr_reg[0][20:16]] <= 1'b1;
                	end
                end
                j: begin
                	stallflag = int_data_flag[instr_reg[0][25:21]];
                end
                jal: begin
                	int_data_flag[28] <= 1'b1;
                end
                jalr: begin
                	int_data_flag[28] <= 1'b1;
                end
                beq, bl, bg: begin
                	argument1[1] <= register_int[instr_reg[0][25:21]];
                	argument2[1] <= register_int[instr_reg[0][20:16]];
                	stallflag = int_data_flag[instr_reg[0][25:21]] | int_data_flag[instr_reg[0][20:16]];
                end




            endcase // now_inst[31:26]

            // 全命令共通の伝搬処理
            instr_reg[1] <= instr_reg[0];
            prop_pc[1] <= prop_pc[0];
            validate_flag[1] <= validate_flag[0];

            if (stallflag) begin
            	// Read After Writeハザードが発生する
            	// パイプラインの伝搬を一つ遅らせる
            	validate_flag[1] <= 1'b0;
            	instr_reg[0] <= instr_reg[0];
            	prop_pc[0] <= prop_pc[0];
            	validate_flag[0] <= validate_flag[0];
            	pc <= pc;
            end

    		// ********************
    		// 実行フェーズその1
    		// ********************


            out = 1'b0;
             
    		case (instr_reg[1][31:26])
    			special:
    				case (instr_reg[1][5:0])
    					s_add:
                            result[2] <= argument1[1] + argument2[1];
                        s_sub:
                            result[2] <= argument1[1] - argument2[1];
                        s_mult:
                            result[2] <= argument1[1] * argument2[1];
                        s_div:
                            result[2] <= argument1[1] / argument2[1];
                        s_mov:
                        	result[2] <= argument1[1];
                    endcase // instr_reg[1][5:0]
                addi:
                	result[2] <= argument1[1] + argument2[1];
                jal, jalr: begin
                	result[2] <= prop_pc[1];
                end


                beq: begin
                	if (argument1[1] != argument2[1] && validate_flag[1]) begin
                		// 分岐予測が外れた場合
                		out = 1'b1;
                	end
                end

                bl: begin
                	if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                		if (argument1[1] >= argument2[1]) begin
                			out = 1'b1;
                		end
                	end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                		if (argument1[1] <= argument2[1]) begin
                			out = 1'b1;
                		end
                	end else if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b1) begin
                		out = 1'b1;
                	end
                end
                
                bg: begin
                	if (argument1[1][31:31] == 1'b0 && argument2[1][31:31] == 1'b0) begin
                		if (argument1[1] <= argument2[1]) begin
                			out = 1'b1;
                		end
                	end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b1) begin
                		if (argument1[1] >= argument2[1]) begin
                			out = 1'b1;
                		end
                	end else if (argument1[1][31:31] == 1'b1 && argument2[1][31:31] == 1'b0) begin
                		out = 1'b1;
                	end
                end
            endcase // instr_reg[1][31:26]

            if (out == 1'b1 && validate_flag[1]) begin
        		// 分岐予測が外れた場合
        		validate_flag[0] <= 1'b0;
        		validate_flag[1] <= 1'b0;
        		validate_flag[2] <= 1'b0;
        		for(i=0;i<32;i=i+1) begin
        			int_data_flag[i] <= 1'b0;
        			float_data_flag[i] <= 1'b0;
        		end
        		pc <= prop_pc[1] + 1;
        	end

            instr_reg[2] <= instr_reg[1];
            prop_pc[2] <= prop_pc[1];
            validate_flag[2] <= validate_flag[1];

    		// ********************
    		// 実行フェーズその2(レジスタへの書き込みは常にここで行う)
    		// ********************

    		if (validate_flag[2]) begin
    			case (instr_reg[2][31:26])
    				special:
    					case (instr_reg[2][5:0])
    						s_add, s_sub, s_mult, s_div: begin
    							register_int[instr_reg[2][15:11]] <= result[2];
    							int_data_flag[instr_reg[2][15:11]] <= 1'b0;
    						end
    						s_mov: begin
    							register_int[instr_reg[2][20:16]] <= result[2];
    							int_data_flag[instr_reg[2][20:16]] <= 1'b0;
    						end
    						s_ret:
    							inst_stop <= 1'b1;
    					endcase // instr_reg[2][5:0]
    				lw: begin
    					register_int[instr_reg[2][20:16]] <= read_data;
    					int_data_flag[instr_reg[2][20:16]] <= 1'b0;
    				end
    				addi: begin
    					register_int[instr_reg[2][20:16]] <= result[2];
    					int_data_flag[instr_reg[2][20:16]] <= 1'b0;
    				end
    				jal, jalr: begin
	    				register_int[28] <= result[2];
	    				int_data_flag[28] <= 1'b0;
	    			end
    			endcase // instr_reg[2][31:26]
    			
    		end

    		// ********************
    		// 実行フェーズその3
    		// ********************



    		// ********************
    		// ストアフェーズ
    		// ********************


    	// ここからは過去の実装

    	/* 
        end else if (status == s_idle) begin

        end else if (status == s_1) begin
            // フェッチフェーズ
            if(inst_stop) begin
                status <= s_idle;
            end else begin
            	now_inst <= inst[pc];
            	// プログラムカウンタは常に次の命令の値を格納している
            	// そのため、相対的にジャンプするときには注意が必要
            	pc <= pc + 1;
                iteration <= iteration + 1;
                
                // 分岐命令フラグはtrueにしか更新しないため、
                // ここで初期化しておく 
                jump <= 1'b0;

            	status <= s_2;
            end

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
                        //s_mov:

                        s_retl: begin
                            jump <= 1'b1;
                            argument3 <= register_int[28];
                        end
                        s_jr: begin
                            jump <= 1'b1;
                            argument3 <= register_int[now_inst[25:21]];
                        end
                        s_ret:
                            inst_stop <= 1'b1;
                        //s_in:
                        //s_fin:

                    endcase // now_inst[5:0]
                //cop1:
                addi: begin
                    argument1 <= register_int[now_inst[25:21]];
                    argument2 <= {16'b0, now_inst[15:0]};
                end
                //lw:
                //ilw:
                //lws:
                //ilws:
                j: begin
                    jump <= 1'b1;
                    argument3 <= {6'b0, now_inst[25:0]};
                end
                beq, bne, bl, bg: begin
                    jump <= 1'b1;
                    argument1 <= register_int[now_inst[25:21]];
                    argument2 <= register_int[now_inst[20:16]];
                    argument3 <= pc + {{16{now_inst[15]}}, now_inst[15:0]};
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
                //fbne:
                //fbg:
                sll: begin
                    argument1 <= register_int[now_inst[20:16]];
                    argument2 <= register_int[now_inst[10:6]];
                end
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
                        //s_ret:
                        //s_in:
                        //s_fin:

                    endcase // now_inst[5:0]
                //cop1:
                addi:
                    result <= argument1 + argument2;
                //lw:
                //ilw:
                //lws:
                //ilws:
                j: begin
                    result <= argument3;
                end
                beq: begin
                    if (argument1 == argument2) begin
                        result <= argument3 - 1;
                    end else begin
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
                        result <= argument3 - 1;
                    end else begin
                        result <= pc;
                    end
                end
                bl: begin
                    if (argument1 < argument2) begin
                        result <= argument3 - 1;
                    end else begin
                        result <= pc;
                    end
                end
                bg: begin
                    if(argument1 > argument2) begin
                        result <= argument3 - 1;
                    end else begin
                        result <= pc;
                    end
                end
                //fbne:
                //fbg:
                sll: begin
                    result <= argument1 << argument2;
                end
            endcase // now_inst[31:26]

            status <= s_4;

        end else if (status == s_4) begin
            // 実行フェーズその2
            if (jump) begin
                pc <= result;
                status <= s_1;
            end else begin
                case (now_inst[31:26])
                    // special命令群の実行
                    special:
                        case (now_inst[5:0])
                            //s_mov:
                            //s_ret:
                            //s_in:
                            //s_fin:

                        endcase // now_inst[5:0]
                    //cop1:
                    //addi:
                    //lw:
                    //ilw:
                    //lws:
                    //ilws:
                    //jal:
                    //jalr:
                    //fbne:
                    //fbg:
                endcase // now_inst[31:26]
                status <= s_5;
            end

        end else if (status == s_5) begin
            // 実行フェーズその3
            status <= s_6;
        end else begin
            // 格納フェーズ
            case (now_inst[31:26])
                // special命令群の実行
                special:
                    case (now_inst[5:0])
                        s_add, s_sub, s_mult, s_div, s_mod:
                            register_int[now_inst[15:11]] <= result;
                        s_mov:
                            register_int[now_inst[20:16]] <= result;
                        //s_retl:
                        //s_jr:
                        //s_ret:
                        //s_in:
                        //s_fin:

                    endcase // now_inst[5:0]
                //cop1:
                addi:
                    register_int[now_inst[20:16]] <= result;
                lw:
                    register_int[now_inst[20:16]] <= read_data;
                //ilw:
                //lws:
               // ilws:
                //fbne:
                //fbg:
                sll:
                    register_int[now_inst[15:11]] <= result;
            endcase // now_inst[31:26]
            status <= s_1;
        end
        */
    	end
    end
endmodule
`default_nettype wire