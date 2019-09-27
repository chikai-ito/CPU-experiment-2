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
  cout << return_code << endl;	
	return return_code;
}
