#include <iostream>
#include <string>
using namespace std;
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
			rt = (int)((code >> 16) & 0b111111);
			rd = (int)((code >> 11) & 0b11111);
			reg[rd] = (int)(((long long)reg[rs] * (long long)reg[rt]) / 4294967296);
			break;
		case 0b011001 :
			//execute MULTL
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b111111);
    	rd = (int)((code >> 11) & 0b11111);
			reg[rd] = (int)(((long long)reg[rs] * (long long)reg[rt]) % 4294967296);
			break;
		case 0b011010 :
			//execute DIV
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
			reg[rd] = reg[rs] / reg[rt];
			break;
		case 0b011011 :
			rs = (int)((code >> 21) & 0b11111);
    	rt = (int)((code >> 16) & 0b11111);
    	rd = (int)((code >> 11) & 0b11111);
    	reg[rd] = reg[rs] % reg[rt];
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
