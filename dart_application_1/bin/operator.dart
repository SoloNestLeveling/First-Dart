import 'package:test/test.dart';

void main(List<String> args) {

print(captalizeName('winter'));
print(captalizeName(null));

print(captalizeName2('winter'));
print(captalizeName2(null));

}

String captalizeName(String? name) 
=> name != null ? name.toUpperCase() : 'Pleas enter your name!'; 

//위에 코드를 더 간단하게!!

String captalizeName2(String? name) 
=> name?.toUpperCase() ?? 'Pleas enter your name!'; 

// left ?? right  = 왼쪽이 null이면 오른쪽을 출력하고, 왼쪽이 값이 null아니면 그대로 왼쪽값 출력

// left ??= right  = 왼쪽이 null 이라면 오른쪽을 출력한다. 

