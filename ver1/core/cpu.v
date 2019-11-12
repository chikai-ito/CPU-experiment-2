`default_nettype none

module top #(CLK_PER_HALF_BIT = 5208) (
    input wire clk,
    input wire rstn,
    input wire [7:0] r_data,
    output wire [7:0] w_data,
    input wire receiver_valid,
    input wire sender_senging,
    output wire sender_ready,
    output wire [31:0] out_led,
    output wire [31:0] pcout,
    output wire [3:0] errout,
    input wire [31:0] read_data,
    output wire [18:0] memory_addr,
    output wire [31:0] write_data,
    output reg [3:0] err_pc,
    output wire we);

	localparam inst_size	 = 64;

	reg [3:0]             status;
    reg [3:0]             err;
    reg                   inst_stop;
    // regsiter: 32
    // 0: zero register
    reg [31:0] register_int [0:31];
    reg [31:0] register_float [0:31];
    reg [31:0] pc;

    // instruction memory
    // 32bit instruction
    // total instruction = 64 
    reg [31:0] inst [0:inst_size-1];
    reg [31:0] now_inst;
    
    reg [3:0] complete;

    /*
    block_memory b(
        clk, now_inst[31:26] == sw,
        register_int[now_inst[20:16]] + now_inst[15:2],
        register_int[now_inst[25:20]],
        memory_read
        );
    */
    

    localparam s_idle = 0;

    //first := fetch
    localparam s_first = 1;
    //second := decode and exec and store
    localparam s_second = 2;

    localparam special  	= 6'b000000;
    localparam s_add 		= 6'b100000;
    localparam s_sub        = 6'b100010;
    localparam s_multh      = 6'b110000;
    localparam s_multl      = 6'b110001;
    localparam s_div        = 6'b110010;
    localparam s_mod        = 6'b110011;
    localparam s_mov        = 6'b001001;
    localparam s_retl		= 6'b111111;
    localparam s_jr			= 6'b001000;
    localparam s_ret        = 6'b000000;
    localparam s_in         = 6'b101010;
    localparam s_out        = 6'b010101;


    localparam cop1         = 6'b010001;
    localparam f_abs        = 6'b000101;
    localparam f_neg        = 6'b000111;
    localparam f_add        = 6'b000000;
    localparam f_sub        = 6'b000001;
    localparam f_mul        = 6'b000010;
    localparam f_div        = 6'b000011;
    localparam f_sqrt       = 6'b000100;
    localparam f_floor      = 6'b001111;
    localparam f_mfc1		= 5'b00000;
    localparam f_mtc1		= 5'b00100;

    localparam j			= 6'b000010;
    localparam addi     	= 6'b001000;
    localparam lw       	= 6'b100011;
    localparam sw       	= 6'b101011;
    localparam beq			= 6'b000100;
    localparam jal			= 6'b011000;
    localparam bne 			= 6'b000101;
    localparam bl			= 6'b000001;
    localparam bg 			= 6'b000110;
    localparam fbne			= 6'b000011;
    localparam fbg			= 6'b000111;
    localparam mov 			= 6'b010001;
    localparam sll 			= 6'b000000;

    localparam equal    	= 1'b1;
    localparam notequal 	= 1'b0;

    integer i;
    
    
    assign we = (now_inst[31:26] == sw) && (status == s_first);
    assign memory_addr = register_int[now_inst[25:21]] + now_inst[15:2];
    assign write_data = register_int[now_inst[20:16]];
    

    assign sender_ready = (now_inst[31:26] == special &&
                           now_inst[5:0] == s_out);

    initial begin
        for(i=0;i<32;i=i+1) begin
            register_int[i] <= 32'b0;
        end
        inst_stop <= 1'b0;
    	status <= s_first;
    	err <= 4'b0000;
    	complete <= 4'b0000;
    	pc <= 0;
    	$display("Loading rom.");
    	$readmemb("copy.mem", inst);
    end

    assign out_led = pc;
    assign pcout = pc;
    assign errout = err;
;
    reg ferr;

    /*
    receiver #(CLK_PER_HALF_BIT) receiver(
        r_data, 
        receiver_valid, 
        ferr,
        uart_rx,
        clk,
        rstn);
	*/
    wire sender_sending;

    assign w_data = register_int[now_inst[25:21]][7:0];
    /*
    sender #(CLK_PER_HALF_BIT) sender(
        w_data,
        sender_ready,
        sender_sending,
        uart_sx,
        clk,
        rstn);
    */
    always @(posedge clk) begin
        if (~rstn) begin
            inst_stop <= 1'b0;
            status <= s_first;
            err <= 4'b0000;
            complete <= 4'b0000;
            pc <= 0;
            register_int[0] <= 32'b0;
    	    $readmemb("copy.mem", inst);
        end else if (status == s_idle) begin

        end else if (status == s_first) begin

            if (inst_stop == 1'b0) begin
            	now_inst <= inst[pc];
            	//pc is pointing next counter
            	//So when jump relatively, you have to be careful
            	pc <= pc + 1;
            end else begin
                status <= s_idle;
            end

        	status <= s_second;

        end else if (status == s_second) begin

        	case (now_inst[31:26])
        		special:
        			case (now_inst[5:0])
        				s_add:
        					register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] + register_int[now_inst[20:16]];
        				s_sub:
                            register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] - register_int[now_inst[20:16]];
                        s_multh:
                            register_int[now_inst[15:11]] <= (register_int[now_inst[25:21]] * register_int[now_inst[20:16]]) >> 16;
                        s_multl:
                            register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] * register_int[now_inst[20:16]];
                        s_div:
                        	register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] / register_int[now_inst[20:16]];
                        s_mod:
                        	register_int[now_inst[15:11]] <= register_int[now_inst[25:21]] % register_int[now_inst[20:16]];
                        s_mov:
                        	register_int[now_inst[20:16]] <= register_int[now_inst[25:21]];
                        s_retl:
                        	//pc has next pointer , so you don't have to +1. (Maybe)
                        	pc <= register_int[28];
                        s_jr:
                        	pc <= now_inst[25:21];
                        s_ret:
                            inst_stop <= 1'b1;
                        s_in:
                            if (receiver_valid) begin
                                register_int[now_inst[25:21]][7:0] <= r_data;
                            end
                        default: begin
        					if (err == 4'b0000) begin
        					   err_pc <= pc;
        					end
        					err <= 4'b0010;
        			    end
        					
        					
        			endcase


        		addi:
        			register_int[now_inst[20:16]] <= register_int[now_inst[25:21]] + now_inst[15:0];
        		lw:
        			register_int[now_inst[20:16]] <= read_data;
        		//sw:
        			/* do nothing */
        		j:
        			pc <= now_inst[25:2];
        		beq:
        			if (register_int[now_inst[25:21]] == register_int[now_inst[20:16]]) begin
        				pc <= pc + now_inst[15:2] - 1;
        			end
        		jal: begin
        			register_int[28] <= pc;
        			pc <= now_inst[25:0];
        		end
        		bne:
        			if(register_int[now_inst[25:21]] != register_int[now_inst[20:16]]) begin
        				pc <= pc + now_inst[15:0] - 1;
        			end
        		bl:
        			if(register_int[now_inst[25:21]] < register_int[now_inst[20:16]]) begin
        				pc <= pc + now_inst[15:0] - 1;
        			end

        		bg:
        			if(register_int[now_inst[25:21]] > register_int[now_inst[20:16]]) begin
        				pc <= pc + now_inst[15:0] - 1;
        			end
        		default:
        		    if (now_inst[25:21] != sw) begin
        			     err <= 4'b0011;
        			end
        	endcase
        	// if (now_inst == (looking instruction) && !(break condition))
        	if (now_inst[31:26] == lw && complete != 4'b0010) begin
        	   complete <= complete + 1;
        	end else if (now_inst[31:26] == special && now_inst[5:0] == s_in && !receiver_valid) begin
               complete <= complete + 1;
            end else if (now_inst[31:26] == special && now_inst[5:0] == s_out && sender_sending) begin
               complete <= complete + 1;
            end else begin
        	   complete <= 4'b0000;
        	   status <= s_first;
        	end
        	   
        end else begin
        	err <= 1;
        end
    end
   
endmodule
`default_nettype wire



