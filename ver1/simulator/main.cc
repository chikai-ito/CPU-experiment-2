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

//file stream for IN and OUT instructions
//get input from "input.txt" and output to "output.txt"
//FILE *fin;
ifstream fin;
FILE *fout;

int main(int argc, char**argv){
	string filename = argv[1];
	
	ifstream reading_file;
	reading_file.open(filename,ios::in);
	string one_assemble_instruction;
	unsigned int reg[32]; // register
	float freg[32]; // float register
  unsigned int * mem;
  mem = (unsigned int *)malloc(8e+9 * sizeof(unsigned int));
	//unsigned int mem[65536]; // memory
  unsigned int inst_mem [65536]; //instruction memory
	int clock = 0;
	int pc = 0;

	pair<string,int> label_list[65536]; //array of instructions which will be written on the execute.txt
	string execute_instruction[65536];
	//label解決をまず行う
	int line_num = 0; //line number 
	int array_num = 0; //represents where to save label information
  int data_num = 0;  //represents how many floating immediates are written in data_section
  int flag = 0; // flag knows we are in text_section or data_section
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
        inst_mem[data_num] = StringToUInt0x(number);
        label_list[array_num].first = label_name;
        label_list[array_num].second = line_num;
        line_num++;
        array_num++;
        data_num++;
      }
    } else {
      // solve label in the text_section
      label_solver(one_assemble_instruction,label_list,&line_num,&array_num,execute_instruction);
    }
	}


// --- create "execute.txt" --- 
  //since jump instruction is added, label information should be incremented
  //using label_list, create new file named execute.txt, the label-solved code
  //jump instruction is added at the first row
  for(int i = 0; i < array_num; i++){
    label_list[i].second = label_list[i].second + 1;
  }
	create_execute_file(execute_instruction,label_list,line_num,array_num,data_num);
// ---   end     ---



	ifstream reading_file1; // file stream for reading execute.txt, the label-solved code
	reading_file1.open("execute.txt",ios::in);
	//この部分に命令をまず入れる。1つのstringが1assebly命令に対応。
	string instruction_set [65536];
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
      // write jump to machine_code.txt
      string one_machine_code = assemble(instruction_set[0],1);
      writing_file << one_machine_code << endl;
      for(int i = 0; i < data_num; i++){
        writing_file << decimal_to_binary(inst_mem[i],32) << "  \\\\ " << "immediate" << endl;
      }
		  for(int i=1; i<line_num - data_num; i++){
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
  // write jump to machine_code.txt
  string one_machine_code = assemble(instruction_set[0],0);
  writing_file << one_machine_code << endl;
  for(int i = 0; i < data_num; i++){
    writing_file << decimal_to_binary(inst_mem[i],32) << endl;
  }
  for(int i=1; i<line_num - data_num; i++){
    string one_machine_code = assemble(instruction_set[i],0);
    writing_file << one_machine_code << endl;
  }
  writing_file.close();



  // --- using machine_code, create inst_mem ---
  ifstream reading_file2; // file stream for machine_code.txt
  reading_file2.open("machine_code.txt",ios::in);
  int instr_num = 0;
  string inst;
  while(!reading_file2.eof())
  {
    getline(reading_file2, inst);
    if((int)inst[0] == 0) continue;
    inst_mem[instr_num] = StringToUInt(inst);
    instr_num = instr_num + 1;
  }


//file stream creation
/*
if ((fin = fopen("input.txt", "r")) == NULL) {
  perror("input file open error");
}
*/
fin.open("input.txt",ios::in);
if ((fout = fopen("result.bin", "w")) == NULL) {
  perror("output file open error");
  exit(1);
}


cout << find_value_from_pair(label_list,"rotate_quadratic_matrix.2736",array_num) << endl;


  
  
// --- code for -l option --- 
if(argc==4){
  if(~strcmp(argv[2], "-l")){
    int block = atoi(argv[3]);
    for(int now = 0; now < instr_num; now++)
    {
      if(now == block) break;
      unsigned int one_instruction = inst_mem[now];
      if(one_instruction == 0) break;
      switch(one_instruction >> 26){
        case 0b000000 :
        //最初のopecodeがspecialつまり000000だった場合
          exec_special_code(one_instruction,pc,&now,reg,freg);
          break;
        case 0b010001 :
          //code for fpu
          exec_fpu_code(one_instruction,pc,reg,freg);
          break;
        default :
          //最初の6文字で命令の判別が可能な場合
          exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem);
          break;
      }
    }
    while(1){
      cout << "---------------------------" << endl;
      cout << "position is " << block; 
      for(int i = 0; i<32; i++){
        if (i%5 == 0) { printf("\n"); }
         printf("r%d = %d   ", i, reg[i]);
      }
      printf("\n");
      for(int i = 0; i<32; i++){
        if (i%3 == 0) { printf("\n"); }
        printf("f%i = %f    ", i, freg[i]);
      }
      char option;
      cin >> option;
      if(option == 'e') break;
      else if(option == 'c') {
        unsigned int one_instruction = inst_mem[block];
        if(one_instruction == 0) break;
        if((block-data_num)>=0) {
          cout << instruction_set[(block-data_num)] << " ";
        }
        switch(one_instruction >> 26){
          case 0b000000 :
          //最初のopecodeがspecialつまり000000だった場合
            exec_special_code(one_instruction,pc,&block,reg,freg);
            break;
          case 0b010001 :
            //code for fpu
            exec_fpu_code(one_instruction,pc,reg,freg);
            break;
          default :
            //最初の6文字で命令の判別が可能な場合
            exec_normal_code(one_instruction,pc,reg,freg,&block,mem,inst_mem);
            break;
        printf("\n");
        }
        block++;
        continue;
      }
    }
  }
  return 0;
}
// ---  code for -l option ---


long long howmany_instructions;

	for(int now = 0; now < instr_num; now++)
	{
		unsigned int one_instruction = inst_mem[now];
		if(one_instruction == 0) break;
		switch(one_instruction >> 26){
			case 0b000000 :
				//最初のopecodeがspecialつまり000000だった場合
				exec_special_code(one_instruction,pc,&now,reg,freg);
				break;
			case 0b010001 :
				//code for fpu
				exec_fpu_code(one_instruction,pc,reg,freg);
				break;
			default :
				//最初の6文字で命令の判別が可能な場合
				exec_normal_code(one_instruction,pc,reg,freg,&now,mem,inst_mem);
				break;
		}
    //cout << now << endl;
    //if (now == 9056) cout << reg[2] << endl;
    howmany_instructions++;
    if(howmany_instructions % 10000000 == 0){
      cout << howmany_instructions << endl;
      /*
      cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      if (i%5 == 0) { printf("\n"); }
      printf("r%d = %d   ", i, reg[i]);
    }
    printf("\n");
    for(int i = 0; i<32; i++){
      if (i%3 == 0) { printf("\n"); }
      printf("f%i = %f    ", i, freg[i]);
      }
      */
    }
	}

  if (fclose(fout) == EOF) {
   		perror("close error");
   		exit(1);
 	}
	
	cout << "---------------------------" << endl;
    for(int i = 0; i<32; i++){
      if (i%5 == 0) { printf("\n"); }
      printf("r%d = %d   ", i, reg[i]);
    }
    printf("\n");
    for(int i = 0; i<32; i++){
      if (i%3 == 0) { printf("\n"); }
      printf("f%i = %f    ", i, freg[i]);
    }
	
	return 0;
}

