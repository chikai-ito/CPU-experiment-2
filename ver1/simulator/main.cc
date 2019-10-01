#include <iostream>
#include <string>
#include <fstream>
#include "exec.h"
#include "assembler.h"
using namespace std;

int main(int argc, char**argv){
	string filename = argv[1];
	
	ifstream reading_file;
	reading_file.open(filename,ios::in);
	string one_assemble_instruction;
	int reg[32];
	int clock = 0;
	int pc = 0;

	//初期化などの処理を行うならここ
	//fib(10)の場合fib.txtを用いて下記1行をコメントアウト
	reg[3] = 10; 


	//この部分に命令をまず入れる。1つのstringが1assebly命令に対応。
	string instruction_set [500];
	int inst_num = 0;
	while(!reading_file.eof())
  {
    getline(reading_file, one_assemble_instruction);
		instruction_set[inst_num] = one_assemble_instruction;
		inst_num = inst_num + 1;
	}


	//このwhileの中にアセンブリコード1行ずつが対応
	//one_assemble_instructionがアセンブリコード1行に対応
	//one_instructionが機械語一命令に対応
	//debug用にassembleを用意したが後々コメントアウト予定
	for(int now = 0; now < inst_num; now++)
	{
		cout << "opsition is " << now << endl;
		string one_instruction = assemble(instruction_set[now]);

		if (one_instruction.substr(0,6) == "000000"){
			//最初のopecodeがspecialつまり000000だった場合
			exec_special_code(one_instruction,pc,reg);
		}
		else{
			//最初の6文字で命令の判別が可能な場合
			exec_normal_code(one_instruction,pc,reg,&now);
		}

		//ここでregisterの中身を出力する
		cout << "---------------------------" << endl;
		for(int i = 0; i<32; i++){
			printf("r%d = %d\n", i, reg[i]);
		}
	}
	
	return 0;
}

