#include <iostream>
#include <string>
using namespace std;
void fpu(unsigned int code, int pc, unsigned int* reg, float* freg){
	//switch using last 6 digits
	switch (code & 0b111111){
		int ft,fs,fd;
		case 0b000101 :
			//exec ABS.S code
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	if(freg[fs]<0){freg[fd] = -freg[fs];}
    	else{freg[fd] = freg[fs];}
			break;
		case 0b000000 :
			//exec ADD.S code
    	ft = (int)((code >> 16) & 0b11111);
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = freg[ft] + freg[fs];
			break;
		case 0b000111 :
			//exec NEG.S code
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = -freg[fs];
			break;
		case 0b000010 :
			//exec MUL.S code
    	ft = (int)((code >> 16) & 0b11111);
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = freg[fs] * freg[ft];
			break;
		case 0b000001 :
			//exec SUB.S code
    	ft = (int)((code >> 16) & 0b11111);
    	fs = (int)((code >> 11) & 0b11111);
    	fd = (int)((code >> 6) & 0b11111);
    	freg[fd] = freg[fs] - freg[ft];
			break;
		case 0b001001 :
			ft = (int)((code >> 21) & 0b11111);
    	fs = (int)((code >> 16) & 0b11111);
    	freg[ft] = freg[fs];
			break;
	}
}
