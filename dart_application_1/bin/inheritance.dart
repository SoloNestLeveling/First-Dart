void main(){

  print('--------Idol---------');
  Idol winter = Idol(name: '김민정', age: 22);

winter.sayNmae();
winter.sayAge();


  BoyGroup aaa = BoyGroup('aa', 22);

aaa.sayNmae();
aaa.sayAge();

}

// OOP의 꽃 가장 유용한 inheritance(상속) !!!
/* 상속을 받으면 부모 클래스의 모든 속성을
자식 클래스가 부여받는다. */

class Idol {
 String name;
 int age;


Idol({required this.name,required this.age,});

void sayNmae(){
  print('${this.name} 입니다.');
}

void sayAge(){
  print('${this.name}님은 ${this.age}살 입니다.');
}

}

//상속하기
class BoyGroup extends Idol{ //extends + 부모
 
 BoyGroup(
  String name, //Idol class의 값들이다
  int age,
 ) : super(name:name, age:age,); //super 안에는 부모의 constructor 구조를 무조건 지켜준다.

}
// super는 부모 클래스로 보내는 연결고리!!
/* 메인에 instance를 생성하고 name과 age를 
입력하면 바로 위에 class 안에 보이그룹 name과 age로 들어
가고 그걸 이제 super를 통해 부모 클래스로 넘겨준다. 
그리고 상속을 했기때문에 따로 선언하지 않아도
부모 클래스의 모든 기능을 사용 할 수있다.*/


// Mixin - 상속과 달리 그냥 속성과,메서드를 뺏어오는 것이다.
// with을 사용해서 넣어준다.. 대신 Mixin할 class는 절대 생성자를 가지고 있으면 안된다.

class DateDabut{
  String dateDabut ='+821일';
  
}

//이렇게 생성된 class는 with을 사용해서 상속하는 것처럼 어디에든 넣어줄수 있다.
