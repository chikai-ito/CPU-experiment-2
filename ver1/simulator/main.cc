#include <iostream>
#include <string>
#include <fstream>
#include <utility>
#include <fstream>
#include "exec.h"
#include "assembler.h"
#include "label_solver.h"
#include "create_execute_file.h"
using namespace std;

int main(int argc, char**argv){
	string filename = argv[1];
	
	ifstream reading_file;
	reading_file.open(filename,ios::in);
	string one_assemble_instruction;
	int reg[32];
	float freg[32];
	int mem[65536];
	int clock = 0;
	int pc = 0;

	//初期化などの処理を行うならここ
	//fib(10)の場合fib.txtを用いて下記1行をコメントアウト

	pair<string,int> label_list[500];
	//array of instructions which will be written on the execute.txt
	string execute_instruction[500];
	//label解決をまず行う
	int line_num = 0;
	int array_num = 0;
	while(!reading_file.eof()){
		getline(reading_file,one_assemble_instruction);
		label_solver(one_assemble_instruction,label_list,&line_num,&array_num,execute_instruction);
	}


	//using label_list, create new file named execute.txt, which is written label-solved code
	create_execute_file(execute_instruction,label_list,line_num,array_num);


	ifstream reading_file1;
	reading_file1.open("execute.txt",ios::in);
	//この部分に命令をまず入れる。1つのstringが1assebly命令に対応。
	string instruction_set [500];
	int inst_num = 0;
	while(!reading_file1.eof())
  {
    getline(reading_file1, one_assemble_instruction);
		instruction_set[inst_num] = one_assemble_instruction;
		inst_num = inst_num + 1;
	}

	// create machine code file
if(argc==3){
	if(~strcmp(argv[2], "-a")){
		ofstream writing_file;
		writing_file.open("machine_code.txt");
		for(int i=0; i<inst_num -1; i++){
			string one_machine_code = assemble(instruction_set[i]);
			writing_file << one_machine_code << endl;
		}		
	writing_file.close();
	return 0;
	}
}


	//このwhileの中にアセンブリコード1行ずつが対応
	//one_assemble_instructionがアセンブリコード1行に対応
	//one_instructionが機械語一命令に対応
	//debug用にassembleを用意したが後々コメントアウト予定
	for(int now = 0; now < inst_num-1; now++)
	{
		cout << "position is " << now << endl;
		string one_instruction = assemble(instruction_set[now]);
		

		if(one_instruction == "00000000000000000000000000000000") break;

		if (one_instruction.substr(0,6) == "000000"){
			//最初のopecodeがspecialつまり000000だった場合
			exec_special_code(one_instruction,pc,&now,reg);
		}
		else if (one_instruction.substr(0,6) == "010001"){
			//code for fpu
			exec_fpu_code(one_instruction,pc,reg,freg);
		}
		else{
			//最初の6文字で命令の判別が可能な場合
			exec_normal_code(one_instruction,pc,reg,freg,&now,mem);
		}

		//ここでregisterの中身を出力する
		cout << "---------------------------" << endl;
		for(int i = 0; i<32; i++){
			printf("r%d = %d\n", i, reg[i]);
		}
	}
	
	return 0;
}

