void main(){

Person winter =Person(name:'김민정',age: 22);
winter.sayHello();

Student jeo = Student('jeo', 23, 'MIT공대', 'IT');
jeo.sayHello();

Professor json = Professor('', 0, 'MIT공대', 'IT');
json.sayHello();

Worker min = Worker(name:'오경민', age:31 , work:'Amazon', department:'프론트엔드', years: 1);
min.sayHello();

}



 

class Person{
String name;
int age;

Person({required this.name, required this.age,});

void sayHello(){
  print('안녛세요 저는 ${name}이고, 나이는${age}입니다.');
}


}

class Student extends Person{

String college;
String major;
  
  Student(
    String name, 
    int age, 
    this.college, 
    this.major,
  ):super(name:name,age:age,);
  



  @override
  void sayHello(){
    print('''안녕하세요 저는 ${super.name}이고, 나이는 ${super.age}살 입니다.
    현재 ${college} 재학중이며, 전공은${major} 입니다.''');
  }

}


class Professor extends Student{


Professor(
    String name,
    int age,
    String college,
    String major
):super(name,age,college,major);

@override
void sayHello(){
  print('안녕하세요 저는 ${college} ${major}전공 교수입니다. ');
}


}

class Worker extends Person {
 String work;
 String department;
 int years;

Worker({
  required String name,
  required int age,
  required  this.work,
  required  this.department,
  required  this.years,
}):super(name:name,age:age);

@override
void sayHello(){
  print('''안녕하세요 저는 ${super.name}입니다, 나이는 ${super.age}살, 
  다니는 회사는 ${work}이고 ${years}년차 ${department} 개발자로 근무중 입니다. ''');
}

}