#include <iostream>
#include <string>
#include <sstream>
#include <bitset>
#include "operation.h"
using namespace std;


string assemble (string line){
	string return_code;
	string opcode;
	istringstream s(line);
	s >> opcode;
	if (opcode == "ADD") {
		string rd, rs, rt;
		s >> rd >> rs >> rt;
		string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		return_code =  "000000" + rd_s + rs_s + rt_s + "00000" + "100000";
	}
	else if (opcode == "J"){
		string instr_index;
		s >> instr_index;
		string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
		return_code = "000010" + instr_index_s;
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
  cout << return_code << endl;	
	return return_code;
}
