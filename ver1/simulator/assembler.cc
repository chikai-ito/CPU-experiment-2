#include <iostream>
#include <string>
#include <sstream>
#include <bitset>
#include <utility>
#include "operation.h"
using namespace std;

//option 0 is for execute, 1 is for core
string assemble (string line, int option){
	string return_code;
	string opcode;
	istringstream s(line);
	s >> opcode;
	//branch for every instructions
	if (opcode == "abs.s"){
    string fs,fd;
    s >> fs >> fd;
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "0100011000000000" + fs_s + fd_s + "000101";
  }
	else if (opcode == "add") {
		string rd, rs, rt;
		s >> rs >> rt >> rd;
		string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		return_code =  "000000" + rs_s + rt_s + rd_s + "00000" + "100000";
	}
	else if (opcode == "addi"){
		string rs, rt, immediate;
		s >> rs >> rt >> immediate;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
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
	else if (opcode == "add.s"){
		string ft,fs,fd;
		s >> ft >> fs >> fd;
		string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
		string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "01000110000" + ft_s + fs_s + fd_s + "000000";
	}
	else if (opcode == "beq"){
		string rs,rt;
		string offset;
		s >> rs >> rt >> offset;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
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
	else if (opcode == "bg"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000110" + rs_s + rt_s + offset_s;
  }
	else if (opcode == "bl"){
    string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000001" + rs_s + rt_s + offset_s;
  }
	else if (opcode == "bne"){
		string rs,rt;
    string offset;
    s >> rs >> rt >> offset;
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000101" + rs_s + rt_s + offset_s;
	}
	else if (opcode == "div"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011010";
	}
	else if (opcode == "fbg"){
    string fs,ft;
    string offset;
    s >> fs >> ft >> offset;
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000111" + fs_s + ft_s + offset_s;
  }
	else if (opcode == "fbne"){
		string fs,ft;
    string offset;
    s >> fs >> ft >> offset;
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "000011" + fs_s + ft_s + offset_s;
	}
	else if (opcode == "floor.w.s"){
		string fs,fd;
    s >> fs >> fd;
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "0100011000000000" + fs_s + fd_s + "001111";
	}
  else if (opcode == "ilw"){
    string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "101111" + base_s + rt_s + offset_s;
  }
  else if (opcode == "ilw.s"){
    string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
    return_code = "100111" + base_s + rt_s + offset_s;
  }
	else if (opcode == "j"){
    string instr_index;
    s >> instr_index;
    string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "000010" + instr_index_s;
  }
	else if (opcode == "jr"){
		string rs;
		s >> rs;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		return_code = "000000" + rs_s + "000000000000000001000";
	}
	else if (opcode == "jal"){
		string instr_index;
		s >> instr_index;
		string instr_index_s = decimal_to_binary(atoi(instr_index.c_str()),26);
    return_code = "011000" + instr_index_s;
  }
	else if (opcode == "lw") {
		string base;
		string rt;
		string offset;
		s >> base >> rt >> offset;
		string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
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
	else if (opcode == "lw.s"){
		string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "100100" + base_s + ft_s + offset_s;
	}
	else if (opcode == "mfc1"){
		string rt,fs;
		s >> rt >> fs;
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
		return_code = "01000100000" + rt_s + fs_s + "00000000000";
	}
	else if (opcode == "mtc1"){
    string rt,fs;
		s >> rt >> fs;
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    return_code = "01000100100" + rt_s + fs_s + "00000000000";
  }
	else if (opcode == "mod"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011011";
	}
	else if (opcode == "mov"){
		string rs,rt;
		s >> rs >> rt;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + "0000000000001001";
	}
	else if (opcode == "mov.s"){
		string rs,rt;
		s >> rs >> rt;
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    return_code = "010001" + rs_s + rt_s + "0000000000001001";
	}
	else if (opcode == "multh"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011000";
	}
	else if (opcode == "multl"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
    string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "011001";
	}
	else if (opcode == "mul.s"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000010";
	}
	else if (opcode == "neg.s"){
		string fs,fd;
		s >> fs >> fd;
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "0100011000000000" + fs_s + fd_s + "000111";
	}
	else if (opcode == "ret"){
		return_code = "00000000000000000000000000000000";
	}
	else if (opcode == "retl"){
		return_code = "00000000000000000000000001111111";
	}
	else if (opcode == "sqrt.s"){
		string fs,fd;
		s >> fs >> fd;
		string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
		return_code = "0100011000000000" + fs_s + fd_s + "000100";
	}
	else if (opcode == "sll"){
		string rt,rd,sa;
		s >> rt >> rd >> sa;
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
    string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		string sa_s = decimal_to_binary(atoi(sa.substr(2,sa.length()-2).c_str()),5);
		return_code = "11111100000" + rt_s + rd_s + sa_s + "000000";
	}
	else if (opcode == "sub"){
		string rs,rt,rd;
		s >> rs >> rt >> rd;
		string rs_s = decimal_to_binary(atoi(rs.substr(2,rs.length()-2).c_str()),5);
		string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
		string rd_s = decimal_to_binary(atoi(rd.substr(2,rd.length()-2).c_str()),5);
		return_code = "000000" + rs_s + rt_s + rd_s + "00000" + "100010";
	}
	else if (opcode == "sub.s"){
		string ft,fs,fd;
    s >> ft >> fs >> fd;
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    string fs_s = decimal_to_binary(atoi(fs.substr(2,fs.length()-2).c_str()),5);
    string fd_s = decimal_to_binary(atoi(fd.substr(2,fd.length()-2).c_str()),5);
    return_code = "01000110000" + ft_s + fs_s + fd_s + "000001";
	}
	else if (opcode == "sw"){
		string base;
    string rt;
    string offset;
    s >> base >> rt >> offset;
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string rt_s = decimal_to_binary(atoi(rt.substr(2,rt.length()-2).c_str()),5);
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
	else if (opcode == "sw.s"){
		string base;
    string ft;
    string offset;
    s >> base >> ft >> offset;
    string base_s = decimal_to_binary(atoi(base.substr(2,base.length()-2).c_str()),5);
    string ft_s = decimal_to_binary(atoi(ft.substr(2,ft.length()-2).c_str()),5);
    int offset_int = atoi(offset.c_str());
    string offset_s;
    if(offset_int < 0){
      offset_int = offset_int + power(2,15);
      offset_s = "1" + decimal_to_binary(atoi(offset.c_str()),15);
    }else{
      offset_s = "0" + decimal_to_binary(atoi(offset.c_str()),15);
    }
		return_code = "101100" + base_s + ft_s + offset_s;
	}
	else{
		//this area is for the label
		string colon;
		s >> colon;
	}
	if (option == 1) {
		return_code = return_code + "  \\\\ " + opcode;
	}
	return return_code;
}
