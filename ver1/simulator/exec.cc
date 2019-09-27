#include <iostream>
#include "alu.h"
using namespace std;
void exec_special_code(string code, int pc, int* reg){
	//最初が000000の命令はaluで実行
	alu(code,pc,reg);
}
void exec_normal_code(string code, int pc, int* reg, int* now){
	if (code.substr(0,6) == "000010")
	{ 
		//JUMP命令の実行
		cout << *now << endl;
		*now = stoi(code.substr(6,26), 0, 2);
		cout << *now << endl;
		cout << "J" << endl;
	}
	else if (code.substr(0,6) == "000100")
	{
		//BEQ命令の実行
		if(code.substr(6,5) == code.substr(11,5)) { *now = *now + stoi(code.substr(16,16), 0, 2); }
		cout << "BEQ" << endl;
	}
	cout << code << endl;
}
