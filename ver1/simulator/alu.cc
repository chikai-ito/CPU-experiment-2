#include <iostream>
#include <string>
#include <fstream>
using namespace std;
//extern FILE *fin;
extern ifstream fin;
extern FILE *fout;
union Convert{
  unsigned int i;
} convert;
void alu(unsigned int code, int pc, int* now, unsigned int* reg){
	switch (code & 0b111111) {
		int rs,rt,rd;
		case 0b100000 :
			//ADDの実行 rd = rs + rt
			rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			rd = (int)((code >> 11) & 0b11111);
			reg[rd] = reg[rs] + reg[rt];
			break;
		case 0b011000 :
			//execute MULTH
			rs = (int)((code >> 21) & 0b11111);
			rt = (int)((code >> 16) & 0b11111);
			rd = (int)((code >> 11) & 0b11111);
			reg[rd] = (int)(((long long)reg[rs] * (long long)reg[rt]) / 4294967296);
			break;
		case 0b011001 :
			//execute MUL
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
			reg[rd] = reg[rs] * reg[rt];
			break;
		case 0b011010 :
			//execute DIV
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
			reg[rd] = reg[rs] / reg[rt];
			break;
		case 0b011011 :
      //execute DIVU
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
    	reg[rd] = reg[rs] % reg[rt];
			break;
    case 0b101010 :
      //execute IN
      rs = (int)((code >> 21) & 0b11111);
      //fread(&convert, sizeof(char), 1, fin);
      fin >> reg[rs];
      //reg[rs] = convert.i;
      break;
    case 0b001000 :
      //execute jr
      rs = (int)((code >> 21) & 0b11111);
      *now = rs -1;
      break;
    case 0b010101:
      //execute OUT
      //using fout, output binary code
      rs = (int)((code >> 21) & 0b11111);
      convert.i = reg[rs];
      fwrite(&convert,sizeof(char),1,fout);
      break;
		case 0b100010 :
			//SUBの実行
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
			reg[rd] = reg[rs] - reg[rt];
			break;
		case 0b001001 :
			//execute mov
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
			reg[rt] = reg[rs];
			break;
		case 0b111111:
    	//execute retl
    	*now = reg[28];
			break;
	}
}
