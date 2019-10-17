#include <iostream>
#include "operation.h"
#include "alu.h"
#include "fpu.h"
using namespace std;
void exec_special_code(unsigned int code, int pc, int* now, unsigned int* reg){
	//最初が000000の命令はaluで実行
	alu(code,pc,now,reg);
}
void exec_fpu_code(unsigned int code, int pc, unsigned int* reg, float* freg){
	fpu(code,pc,reg,freg);
}
void exec_normal_code(unsigned int code, int pc, unsigned int* reg, float* freg, int* now, unsigned int* mem){
	switch(code >> 26){
		int rt,rs,ft,base,fs,rd,sa;
		case 0b001000 :
			//ADDI命令の実行
			rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			int immediate;
			//immediateは場合分けが必要
			if((code>>15)&0b1){
				immediate = (int)(code&0b111111111111111) - power(2,15);
			}else{
				immediate = (int)(code&0b1111111111111111);
			}
			reg[rt] = reg[rs] + immediate;
			break;
		case 0b000100 :
    	//BEQ命令の実行
			rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
			if((code>>16)&0b1){
				if(reg[rs] == reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
			}else{
				if(reg[rs] == reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
			}
			break;
		case 0b000110 :
			//execute bg
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
     		if(reg[rs] > reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
      	if(reg[rs] > reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
		case 0b000001 :
			//execute bl
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(reg[rs] < reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
   	 	}else{
   	   if(reg[rs] < reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
   	 	}
			break;
		case 0b000101 :
			//execute bne
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(reg[rs] != reg[rt]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
    	  if(reg[rs] != reg[rt]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
		case 0b000111 :
    	//execute fbg
    	fs = (int)((code >> 21) & 0b11111);
    	ft = (int)((code >> 16) & 0b11111);
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(freg[fs] > freg[ft]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
   	  	if(freg[fs] > freg[ft]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
		case 0b000011 :
			//execute fbne
			fs = (int)((code >> 21) & 0b11111);
			ft = (int)((code >> 16) & 0b11111);
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	if((code>>15)&0b1){
    	  if(freg[fs] != freg[ft]) { *now = *now + (int)(code&0b111111111111111) -power(2,15)- 1; }
    	}else{
     	 if(freg[fs] != freg[ft]) { *now = *now + (int)(code&0b1111111111111111) - 1; }
    	}
			break;
		case 0b000010 :
			//JUMP命令の実行
			//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
			*now = (int)(code&0b11111111111111111111111111) - 1;
			break;
		case 0b011000 :
    	//execute jal
			reg[28] = *now;
    	//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    	*now = (int)(code&0b11111111111111111111111111) - 1;
			break;
		case 0b100011 :
			//execute lw instruction
			base = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			if((code>>15)&0b1){
	      reg[rt] = mem[reg[base] + (int)(code&0b111111111111111) - power(2,15)];
	    }else{
	      reg[rt] = mem[reg[base] + (int)(code&0b1111111111111111)];
	    }
			break;
		case 0b100100 :
			//exec lw.s instruction
			base = (int)((code >> 21) & 0b11111);
	    ft = (int)((code >> 16) & 0b11111);
			if((code>>15)&0b1){
	      reg[ft] = mem[reg[base] + (int)(code&0b111111111111111) - power(2,15)];
	    }else{
	      reg[ft] = mem[reg[base] + (int)(code&0b1111111111111111)];
	    }
			break;
		case 0b111111 :
			//execute sll instruction
			rt = (int)((code >> 16) & 0b11111);
			rd = (int)((code >> 11) & 0b11111);
			sa = (int)((code >> 6) & 0b11111);
			reg[rd] = (reg[rt]) << sa;
			break;
		case 0b101011 :
			//execute sw instruction
	    base = (int)((code >> 21) & 0b11111);
	    rt = (int)((code >> 16) & 0b11111);
	    if((code>>15)&0b1){
	      mem[reg[base] + (int)(code&0b111111111111111) - power(2,15)] = reg[rt];
	    }else{
	      mem[reg[base] + (int)(code&0b1111111111111111)] = reg[rt];
	    }
			break;
		case 0b101100 :
	    //execute sw.s instruction
	    base = (int)((code >> 21) & 0b11111);
	    ft = (int)((code >> 16) & 0b11111);
	    if((code>>15)&0b1){
	      mem[reg[base] + (int)(code&0b111111111111111) - power(2,15)] = reg[ft];
	    }else{
	      mem[reg[base] + (int)(code&0b1111111111111111)] = reg[ft];
	    }
			break;
	}
//	cout << code << endl;
}
