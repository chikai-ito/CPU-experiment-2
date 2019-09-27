#include <iostream>
#include "alu.h"
using namespace std;
void exec_special_code(string code, int pc, int* reg){
	//最初が000000の命令はaluで実行
	alu(code,pc,reg);
}
void exec_normal_code(string code, int pc, int* reg){
	cout << code << endl;
}
