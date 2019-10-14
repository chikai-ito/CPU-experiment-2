#include <iostream>
#include <string>
using namespace std;
void alu(string code, int pc, int* reg){
	if(code.substr(26,6) == "100000") {
		//ADDの実行 rd = rs + rt
		cout << "ADDを実行します" << endl;
		int rs = stoi(code.substr(6,5), 0, 2);
		int rt = stoi(code.substr(11,5), 0, 2);
		int rd = stoi(code.substr(16,5), 0, 2);
		reg[rd] = reg[rs] + reg[rt];
	}
	else if(code.substr(26,6) == "011000"){
		//execute MULTH
		int rs = stoi(code.substr(6,5),0,2);
		int rt = stoi(code.substr(11,5),0,2);
		int rd = stoi(code.substr(16,5),0,2);
		reg[rd] = (int)(((long long)reg[rs] * (long long)reg[rt]) / 4294967296);
	}
	else if(code.substr(26,6) == "011001"){
		//execute MULTL
		int rs = stoi(code.substr(6,5),0,2);
    int rt = stoi(code.substr(11,5),0,2);
    int rd = stoi(code.substr(16,5),0,2);
		reg[rd] = (int)(((long long)reg[rs] * (long long)reg[rt]) % 4294967296);
	}
	else if(code.substr(26,6) == "011010"){
		//execute DIV
		int rs = stoi(code.substr(6,5), 0, 2);
    int rt = stoi(code.substr(11,5), 0, 2);
    int rd = stoi(code.substr(16,5), 0, 2);
		reg[rd] = reg[rs] / reg[rt];
	}
	else if(code.substr(26,6) == "011011"){
		int rs = stoi(code.substr(6,5), 0, 2);
    int rt = stoi(code.substr(11,5), 0, 2);
    int rd = stoi(code.substr(16,5), 0, 2);
    reg[rd] = reg[rs] % reg[rt];
	}
	else if(code.substr(26,6) == "100010"){
		//SUBの実行
		cout << "SUBを実行します" << endl;
		int rs = stoi(code.substr(6,5), 0, 2);
    int rt = stoi(code.substr(11,5), 0, 2);
    int rd = stoi(code.substr(16,5), 0, 2);
		reg[rd] = reg[rs] - reg[rt];
	}
	else if(code.substr(26,6) == "001001"){
		//execute mov
		int rs = stoi(code.substr(6,5), 0, 2);
    int rt = stoi(code.substr(11,5), 0, 2);
		reg[rt] = reg[rs];
	}
}
