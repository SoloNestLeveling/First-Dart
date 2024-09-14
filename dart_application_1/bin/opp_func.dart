
import 'package:test/test.dart';

void main(List<String> args) {
  
Idol aespa = Idol('winter', 23 );
aespa.sayHello();

Student student = Student('000', 20, '000', 'IT');
student.sayHello();

print('------------------------------');

UserInfor<String,int> user =UserInfor('ooo', 18);

user.userBlack();
user.allowAge();



List<int> numbers = [1,2,3,4,5,6,7,8,9,10];

List<String> number = numbers.map((x) => x % 2==0 ? '$x.jpg': '$x.mp3').toList();

print(number);
    
  
//---------------------------Json>>class---------------------------------------

List<Map<String, dynamic>> userIfor =[
{
  'name': 'winter',
  'age': 23,
  'phoneNumber':'010-0000-0000',
},

{
  'name':'karina',
  'age':24,
  'phoneNumber':'010-0000-0000',
},

{
  'name':'kyungMin',
  'age':32,
  'phoneNumber':'010-0000-0000',
}

];

print(userIfor);

final farsingUserList = userIfor.map((x) => UserList(
  name: x['name']!, 
  age: x['age']!, 
  phoneNumber: x['phoneNumber']!,
  ),
  ).where((x) => x.name == 'winter').toList();

  print(farsingUserList);



}

class UserList{
final String name;
final int age;
final String phoneNumber;

UserList({
  required this.name,
  required this.age,
  required this.phoneNumber,
  });

@override

String toString() {
    return 'UserList(name $name, age $age, phoneNumber $phoneNumber )';
  }


}








//----------------------------------상속----------------------------

// ignore: empty_constructor_bodies
class Idol{
final String name;
final int age;

Idol(
  this.name,
  this.age,
);

void sayHello(){
  print('안녕하세요 저는 $name이고 나이는 $age살입니다.');
}
}

class Student extends Idol{
final String school;
final String major;


Student(
final String name,
final int age,
final String school,
final String major,
):this.school = school,
  this.major = major,
  super(name, age);

@override
void sayHello(){
  print('안녕하세요 저는 $name입니다. 저는 $age살이고 $school재학중이며 전공은 $major입니다.');
}

}

//----------------------------------generric-------------------------------------------


class UserInfor<x,t>{
 x name;
 t age;

 UserInfor(
  this.name,
  this.age,
 );

void userBlack(){
  print('$name 이 유저는 현재 정시상태입니다.');
}
void allowAge(){
  print('이 게임은 $age세 이상 사용가능입니다.');
}


}



