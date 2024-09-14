void main() {
  

int result3 =calculation (10,20,30, add);

print(result3);

int result4 =calculation(30,30,32, sub);
print(result4);

print(sayHi({'name':'winter'}));

}

typedef Operation = int Function(int x, int y, int z);

//더허기
int add(int x, int y, int z) => x + y + z;

//빼기
int sub(int x, int y, int z) => x - y- z;

//계산
int calculation(int x, int y, int z, Operation operation){
  return operation(x,y,z);
}




typedef UserInfo = Map<String,String>;

String sayHi(UserInfo userInfo){
return 'Hi ${userInfo['name']}';
}