#include <iostream>
#include <string>
using namespace std;
void fpu(string code, int pc, int* reg, float* freg){
	if(code.substr(26,6) == "000101") {
		//exec ABS.S code
		int fs = stoi(code.substr(16,5),0,2);
		int fd = stoi(code.substr(21,5),0,2);
		if(freg[fs]<0){freg[fd] = -freg[fs];}
		else{freg[fd] = freg[fs];}
	}
	else if(code.substr(26,6) == "000000"){
		//exec ADD.S code
		int ft = stoi(code.substr(11,5),0,2);
		int fs = stoi(code.substr(16,5),0,2);
    int fd = stoi(code.substr(21,5),0,2);
		freg[fd] = freg[ft] + freg[fs];
	}
	else if(code.substr(26,6) == "000111"){
		//exec NEG.S code
		int fs = stoi(code.substr(16,5),0,2);
    int fd = stoi(code.substr(21,5),0,2);
		freg[fd] = -freg[fs];
	}
	else if(code.substr(26,6) == "000010"){
		//exec MUL.S code
		int ft = stoi(code.substr(11,5),0,2);
    int fs = stoi(code.substr(16,5),0,2);
    int fd = stoi(code.substr(21,5),0,2);
    freg[fd] = freg[fs] * freg[ft];
	}
	else if(code.substr(26,6) == "000001"){
		//exec SUB.S code
		int ft = stoi(code.substr(11,5),0,2);
    int fs = stoi(code.substr(16,5),0,2);
    int fd = stoi(code.substr(21,5),0,2);
    freg[fd] = freg[fs] - freg[ft];
	}
	else if(code.substr(26,6) == "001001"){
		int ft = stoi(code.substr(6,5),0,2);
    int fs = stoi(code.substr(11,5),0,2);
		freg[ft] = freg[fs];
	}
}
