#include <iostream>
#include "operation.h"
#include "alu.h"
using namespace std;
void exec_special_code(string code, int pc, int* reg){
	//最初が000000の命令はaluで実行
	alu(code,pc,reg);
}
void exec_normal_code(string code, int pc, int* reg, int* now){
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
		if(reg[rs] == reg[rt]) { *now = *now + stoi(code.substr(16,16), 0, 2) - 1; }
		cout << "BEQ" << endl;
  }
	else if (code.substr(0,6) == "000010")
	{ 
		//JUMP命令の実行
		cout << *now << endl;
		//*nowの値はそのあとでnow++されるのでここで1を引いとかなければならない
		*now = stoi(code.substr(6,26), 0, 2) - 1;
		cout << *now << endl;
		cout << "J" << endl;
	}
	cout << code << endl;
}
