#include <iostream>
#include <string>
#include <sstream>
#include <bitset>
#include <utility>
#include "operation.h"
using namespace std;


string assemble (string line){
	string return_code;
	string opcode;
	istringstream s(line);
	s >> opcode;
	//branch for every instructions
	if (opcode == "ADD") {
		string rd, rs, rt;
		s >> rd >> rs >> rt;
		string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		return_code =  "000000" + rd_s + rs_s + rt_s + "00000" + "100000";
	}
	else if (opcode == "ADDI"){
		string rs, rt, immediate;
		s >> rs >> rt >> immediate;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		//immediateはマイナスの場合の場合分けが必要
		int immediate_int = atoi(immediate.c_str());
		string immediate_s;
		if(immediate_int < 0){
			immediate_int = immediate_int + power(2,15);
			immediate_s = "1" + decimal_to_binary(immediate_int, 15);
		}else{
			immediate_s = "0" + decimal_to_binary(immediate_int, 15);
		}
		return_code = "001000" + rs_s + rt_s + immediate_s;
	}
	else if (opcode == "BEQ"){
		string rs,rt;
		string offset;
		s >> rs >> rt >> offset;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		string offset_s = decimal_to_binary(atoi(offset.c_str()),16);
		return_code = "000100" + rs_s + rt_s + offset_s;
	}
	else if (opcode == "J"){
    string instr_index;
    s >> instr_index;
    string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "000010" + instr_index_s;
  }
	else{
		//this area is for the label
		string colon;
		s >> colon;
	}
  cout << return_code << endl;	
	return return_code;
}
