#include <iostream>
#include <string>
#include <fstream>
#include <sstream>
#include <utility>
#include "exec.h"
#include "assembler.h"
#include "label_solver.h"
#include "operation.h"
#include "create_execute_file.h"
using namespace std;

int main(int argc, char**argv){
	string filename = argv[1];
	
	ifstream reading_file;
	reading_file.open(filename,ios::in);
	string one_assemble_instruction;
	unsigned int reg[32];
	float freg[32];
	unsigned int mem[65536];
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
  int data_num = 0;
  // flag knows we are in text_section
  int flag = 0;
	while(!reading_file.eof()){
		getline(reading_file,one_assemble_instruction);
    if(flag==0){
      string label_name;
      istringstream s(one_assemble_instruction);
      s >> label_name;
      if(label_name == "#text_section"){flag++;}
      else if(label_name[0] != '#'){
        string colon;
        s >> colon;
        string data_code;
        getline(reading_file,data_code);
        string lon, number;
        istringstream s1(data_code);
        s1 >> lon >> number;
        cout << number << endl;
        label_list[array_num].first = label_name;
        label_list[array_num].second = line_num;
        line_num++;
        array_num++;
        data_num++;
        //convert number into 32 bit and allocate it into instruction memory
        //   !!! not yet !!!
      }
    } else {
      label_solver(one_assemble_instruction,label_list,&line_num,&array_num,execute_instruction);
    }
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
		for(int i=0; i<line_num -1; i++){
			string one_machine_code = assemble(instruction_set[i],1);
			writing_file << one_machine_code << endl;
		}	
	writing_file.close();
	return 0;
	}
}

	//it is for executing simulator
	ofstream writing_file;
    writing_file.open("machine_code.txt");
    for(int i=0; i<line_num -1; i++){
      string one_machine_code = assemble(instruction_set[i],0);
      writing_file << one_machine_code << endl;
    }
  writing_file.close();



	//このwhileの中にアセンブリコード1行ずつが対応
	//one_assemble_instructionがアセンブリコード1行に対応
	//one_instructionが機械語一命令に対応
	//debug用にassembleを用意したが後々コメントアウト予定
	//
	unsigned int int_inst_set [500];
	for(int i = 0; i < line_num-1; i++){
    string one_instruction = assemble(instruction_set[i],0);
		int_inst_set[i] = StringToUInt(one_instruction);
	}


// --- code for -l option --- 
if(argc==4){
  if(~strcmp(argv[2], "-l")){
    int block = atoi(argv[3]);
    for(int now = 0; now < block; now++)
    {
      unsigned int one_instruction = int_inst_set[now];
      if(one_instruction == 0) break;
      switch(one_instruction >> 26){
        case 0b000000 :
        //最初のopecodeがspecialつまり000000だった場合
          exec_special_code(one_instruction,pc,&now,reg);
          break;
        case 0b010001 :
          //code for fpu
          exec_fpu_code(one_instruction,pc,reg,freg);
          break;
        default :
          //最初の6文字で命令の判別が可能な場合
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem);
          break;
      }
    }
    while(1){
      cout << "---------------------------" << endl;
      for(int i = 0; i<32; i++){
        printf("r%d = %d\n", i, reg[i]);
      }
      char option;
      cin >> option;
      if(option == 'e') break;
      else if(option == 'c') {
        unsigned int one_instruction = int_inst_set[block];
        if(one_instruction == 0) break;
        switch(one_instruction >> 26){
          case 0b000000 :
          //最初のopecodeがspecialつまり000000だった場合
            exec_special_code(one_instruction,pc,&block,reg);
            break;
          case 0b010001 :
            //code for fpu
            exec_fpu_code(one_instruction,pc,reg,freg);
            break;
          default :
            //最初の6文字で命令の判別が可能な場合
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem);
            break;
        }
        block++;
        continue;
      }
    }
  }
  return 0;
}
// ---  code for -l option ---




	for(int now = 0; now < inst_num-1; now++)
	{
		unsigned int one_instruction = int_inst_set[now];
		if(one_instruction == 0) break;
		switch(one_instruction >> 26){	
			case 0b000000 :
				//最初のopecodeがspecialつまり000000だった場合
				exec_special_code(one_instruction,pc,&now,reg);
				break;
			case 0b010001 :
				//code for fpu
				exec_fpu_code(one_instruction,pc,reg,freg);
				break;
			default :
				//最初の6文字で命令の判別が可能な場合
				exec_normal_code(one_instruction,pc,reg,freg,&now,mem);
				break;
		}
	}
	
	cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      printf("r%d = %d\n", i, reg[i]);
    }
	
	return 0;
}

