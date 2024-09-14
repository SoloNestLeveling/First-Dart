void main(List<String> args) {
  
Student winter =Student('김민정', 'SM대학교');
winter.sayHello();



}

//interface는 상속이랑 비슷하다, 차이는 interface는 부모의 형태만 물려준다.
//interface는 abstract를 해줌으로써 instance를 해줄수 없다,
abstract class Person{
  String name;

  Person(
    this.name,
  );
void sayHello();

}


class Student implements Person{

 String name;
 String school;

Student(
 this.name,
 this.school   
);

void sayHello(){
  print('안녕하세요 저는 ${name} 입니다. 현재 ${school}에 재학중입니다.');
}

}