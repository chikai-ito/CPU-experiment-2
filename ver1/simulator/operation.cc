#include<iostream>
#include<string>
using namespace std;

//べき乗計算
int power(int num, int n){
	int ans = 1;
	for(int i = n; i>0; i--){
		ans = ans * num;
	}
	return ans;
}

//10進数の整数numをnbitの2進数のstringに変換
string decimal_to_binary(int num, int n){
  string binary;
  while(n > 0) {
		binary += to_string(num / power(2,n-1));
		if((num / power(2,n-1)) == 1) {
		  num = num - power(2,n-1);
		}
    n = n - 1;
  }
  return binary;
}
