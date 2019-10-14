#include <iostream>
#include "operation.h"
#include "alu.h"
#include "fpu.h"
using namespace std;
void exec_special_code(string code, int pc, int* reg){
	//最初が000000の命令はaluで実行
	alu(code,pc,reg);
}
void exec_fpu_code(string code, int pc, int* reg, float* freg){
	fpu(code,pc,reg,freg);
}
void exec_normal_code(string code, int pc, int* reg, float* freg, int* now, int* mem){
	if (code.substr(0,6) == "001000")
	{
		//ADDI命令の実行
		int rs = stoi(code.substr(6,5),0,2);
		int rt = stoi(code.substr(11,5),0,2);
		int immediate;
		//immediateは場合分けが必要
		if(code[16] == '1'){
			immediate = stoi(code.substr(17,15),0,2) - power(2,15);
		}else{
			immediate = stoi(code.substr(16,16),0,2);
		}
		reg[rt] = reg[rs] + immediate;
		cout << "ADDI" << endl;
	}
	else if (code.substr(0,6) == "000100")
  {
    //BEQ命令の実行
		int rs = stoi(code.substr(6,5),0,2);
		int rt = stoi(code.substr(11,5),0,2);
		//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
		if(code[16] == '1'){
			if(reg[rs] == reg[rt]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
		}else{
			if(reg[rs] == reg[rt]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
		}
		cout << "BEQ" << endl;
  }
	else if (code.substr(0,6) == "000110")
	{
		//execute bg
		int rs = stoi(code.substr(6,5),0,2);
    int rt = stoi(code.substr(11,5),0,2);
    //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    if(code[16] == '1'){
      if(reg[rs] > reg[rt]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
    }else{
      if(reg[rs] > reg[rt]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
    }
  }
	else if (code.substr(0,6) == "000001")
	{
		//execute bl
		int rs = stoi(code.substr(6,5),0,2);
    int rt = stoi(code.substr(11,5),0,2);
    //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    if(code[16] == '1'){
      if(reg[rs] < reg[rt]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
    }else{
      if(reg[rs] < reg[rt]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
    }
	}
	else if (code.substr(0,6) == "000101")
	{
		//execute bne
		int rs = stoi(code.substr(6,5),0,2);
    int rt = stoi(code.substr(11,5),0,2);
    //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    if(code[16] == '1'){
      if(reg[rs] != reg[rt]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
    }else{
      if(reg[rs] != reg[rt]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
    }
	}
	else if (code.substr(0,6) == "000111")
	{
    //execute fbg
    int fs = stoi(code.substr(6,5),0,2);
    int ft = stoi(code.substr(11,5),0,2);
    //*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    if(code[16] == '1'){
      if(freg[fs] > freg[ft]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
    }else{
      if(freg[fs] > freg[ft]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
    }
  }
	else if (code.substr(0,6) == "000011")
	{
		//execute fbne
		int fs = stoi(code.substr(6,5),0,2);
		int ft = stoi(code.substr(11,5),0,2);
		//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
    if(code[16] == '1'){
      if(freg[fs] != freg[ft]) { *now = *now + stoi(code.substr(17,15), 0, 2) -power(2,15)- 1; }
    }else{
      if(freg[fs] != freg[ft]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
    }
  }
	else if (code.substr(0,6) == "000010")
	{ 
		//JUMP命令の実行
		cout << "before jump " <<*now << endl;
		//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
		*now = stoi(code.substr(6,26), 0, 2) - 1;
		cout << "after jump " << *now << endl;
		cout << "J" << endl;
	}
	else if (code.substr(0,6) == "001000")
	{
		reg[27] = *now;
		*now = stoi(code.substr(6,26), 0, 2) - 1;
	}
	else if (code.substr(0,6) == "100011")
	{
		//execute LW instruction
		int base = stoi(code.substr(6,5),0,2);
		int rt = stoi(code.substr(11,5),0,2);
		if(code[16] == '1'){
      reg[rt] = mem[reg[base] + stoi(code.substr(17,15), 0, 2) - power(2,15)];
    }else{
      reg[rt] = mem[reg[base] + stoi(code.substr(16,16), 0, 2)];
    }
	}
	else if (code.substr(0,6) == "100100")
	{
		//exec lw.s instruction
		int base = stoi(code.substr(6,5),0,2);
    int ft = stoi(code.substr(11,5),0,2);
		if(code[16] == '1'){
      reg[ft] = mem[reg[base] + stoi(code.substr(17,15), 0, 2) - power(2,15)];
    }else{
      reg[ft] = mem[reg[base] + stoi(code.substr(16,16), 0, 2)];
    }
	}
	else if (code.substr(0,6) == "111111")
	{
		//execute sll instruction
		int rt = stoi(code.substr(11,5),0,2);
		int rd = stoi(code.substr(16,5),0,2);
		int sa = stoi(code.substr(21,5),0,2);
		reg[rd] = (reg[rt]) << sa;
	}
	else if (code.substr(0,6) == "101011")
	{
		//execute SW instruction
    int base = stoi(code.substr(6,5),0,2);
    int rt = stoi(code.substr(11,5),0,2);
    if(code[16] == '1'){
      mem[reg[base] + stoi(code.substr(17,15), 0, 2) - power(2,15)] = reg[rt];
    }else{
      mem[reg[base] + stoi(code.substr(16,16), 0, 2)] = reg[rt];
    }
	}
	else if (code.substr(0,6) == "101100")
  {
    //execute sw.s instruction
    int base = stoi(code.substr(6,5),0,2);
    int ft = stoi(code.substr(11,5),0,2);
    if(code[16] == '1'){
      mem[reg[base] + stoi(code.substr(17,15), 0, 2) - power(2,15)] = reg[ft];
    }else{
      mem[reg[base] + stoi(code.substr(16,16), 0, 2)] = reg[ft];
    }
  }
	cout << code << endl;
}
