#include<utility>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include "operation.h"
using namespace std;
void create_execute_file(string* execute_instruction, pair<string,int>* label_list, int line_num,int array_num){
	string filename = "execute.txt";
	ofstream writing_file;
	writing_file.open(filename);
	for(int i=0; i <= line_num; i++){
		string jump;
		istringstream s(execute_instruction[i]);
		s >> jump;
		if(jump == "J") {
			string jump_to;
			s >> jump_to;
			int jump_to_num = find_value_from_pair(label_list,jump_to,array_num);
			writing_file << jump << " " << jump_to_num << endl;
		}
		else{
			writing_file << execute_instruction[i] << endl;
		}
	}
	writing_file.close();
	return ;
}
