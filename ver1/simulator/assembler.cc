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
	if (opcode == "ABS.S"){
    string fs,fd;
    s >> fs >> fd;
    string fs_s = decimal_to_binary(atoi(fs.substr(1,fs.length()-1).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(1,fd.length()-1).c_str()),5);
    return_code = "0100011000000000" + fs_s + fd_s + "000101";
  }
	else if (opcode == "ADD") {
		string rd, rs, rt;
		s >> rs >> rt >> rd;
		string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		return_code =  "000000" + rs_s + rt_s + rd_s + "00000" + "100000";
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
	else if (opcode == "ADD.S"){
		string ft,fs,fd;
		s >> ft >> fs >> fd;
		string ft_s = decimal_to_binary(atoi(ft.substr(1,ft.length()-1).c_str()),5);
		string fs_s = decimal_to_binary(atoi(fs.substr(1,fs.length()-1).c_str()),5);
		string fd_s = decimal_to_binary(atoi(fd.substr(1,fd.length()-1).c_str()),5);
		return_code = "01000110000" + ft_s + fs_s + fd_s + "000000";
	}
	else if (opcode == "BEQ"){
		string rs,rt;
		string offset;
		s >> rs >> rt >> offset;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		int offset_int = atoi(offset.c_str());
		string offset_s;
		if(offset_int < 0){
			offset_int = offset_int + power(2,15);
			offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
		}else{	
			offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
		}
		return_code = "000100" + rs_s + rt_s + offset_s;
	}
	else if (opcode == "BGEZ"){
		string rs;
		string offset;
		s >> rs >> offset;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		int offset_int = atoi(offset.c_str());
		string offset_s;
		if(offset_int < 0){
			offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "000001" + rs_s + "00001" + offset_s;
	}
	else if (opcode == "DIV"){
		string rs,rt,rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011010";
	}
	else if (opcode == "J"){
    string instr_index;
    s >> instr_index;
    string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "000010" + instr_index_s;
  }
	else if (opcode == "LW") {
		string base;
		string rt;
		string offset;
		s >> base >> rt >> offset;
		string base_s = decimal_to_binary(atoi(base.c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		int offset_int = atoi(offset.c_str());
    string offset_s;
		if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "100011" + base_s + rt_s + offset_s;
	}
	else if (opcode == "MOD"){
		string rs,rt,rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011011";
	}
	else if (opcode == "MULTH"){
		string rs,rt,rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011000";
	}
	else if (opcode == "MULTL"){
		string rs,rt,rd;
    string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011001";
	}
	else if (opcode == "MUL.S"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    string ft_s = decimal_to_binary(atoi(ft.substr(1,ft.length()-1).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(1,fs.length()-1).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(1,fd.length()-1).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000010";
	}
	else if (opcode == "NEG.S"){
		string fs,fd;
		s >> fs >> fd;
    string fs_s = decimal_to_binary(atoi(fs.substr(1,fs.length()-1).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(1,fd.length()-1).c_str()),5);
		return_code = "0100011000000000" + fs_s + fd_s + "000111";
	}
	else if (opcode == "SUB"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(1,rs.length()-1).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
		string rd_s = decimal_to_binary(atoi(rd.substr(1,rd.length()-1).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "100010";
	}
	else if (opcode == "SUB.S"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    string ft_s = decimal_to_binary(atoi(ft.substr(1,ft.length()-1).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(1,fs.length()-1).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(1,fd.length()-1).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000001";
	}
	else if (opcode == "SW"){
		string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    string base_s = decimal_to_binary(atoi(base.c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(1,rt.length()-1).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "101011" + base_s + rt_s + offset_s;
	}
	else{
		//this area is for the label
		string colon;
		s >> colon;
	}
	return return_code;
}
