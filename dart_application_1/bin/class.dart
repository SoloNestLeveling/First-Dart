void main() {
  Idol aespa = Idol(
    //named 선언하는법
    name: '에스파',
    members: ['카리나', '윈터', '지젤', '닝닝'],
  ); // 타입 이름 = (클래스) 클래스이름
  print(aespa.name);
  print(aespa.members);

  Idol blackpink = Idol(name: '블랙핑크', members: ['지수', '로제', '제니', '리사']);

  print(blackpink.name);
  print(blackpink.members);
  blackpink.sayHello();
  blackpink.sayMembers();

  Aespa member = Aespa('김민정', 23);
  print(member);
}

//Idol class, class를 실행하기 위해 instance 해준다.
// name(이름) - 변수
// members(맴버들) -변수
// sayHello(인사) - 함수
// sayMembers(맴버소개) -함수
/*constructor(생성자) - 클래스 내부 어디에서든 선언 할 수있다. 그리고 Posirional, named 가능
 생성자를 만들어 줌으로써 자유롭게  class를 다룰수있다. 기본적으로 '클래스이름(파라미터);'
 이런식으로 시작한다.
 */
// class의 변수들 앞에 final를 선언하는 습관을 가지자!! 이렇게 변수가 재선언 되지 않도록 해서, 오류를 줄인다.

class Idol {
  final String name; // 벨류 값들은 지워도 된다.
  final List<String> members;

/*!! const instance, instance 앞에 const를 붙여준다. 
 const를 붙여 줌으로써 const 타입만 쓸수있다.
*/

/*Idol(String name, List<String> members)
: this.name = name, //앞에 this.name은 맨처음 선언된 String name을 의미하고 뒤에 name은 Idol 파라미터 안에  String name을 의미한다.
this.members = members;*/

/* 더 간단하게 선언하는법!
 Idol(this.neme, this.memebers);
*/

//named constructor parameter
  Idol({required this.name, required this.members});

  void sayHello() {
    print('안녕하새여 $name입니다.'); //유동적인 부분에 this.name 이런식으로 선언
  }

  void sayMembers() {
    print('저희 맴버는 $members입니다.');
  }
}
//const instance 기능
/* 
  Idol aespa =new Idol( '에스파',['카리나','윈터','지젤','닝닝'],);  
  Idol aespa2 =new Idol( '에스파',['카리나','윈터','지젤','닝닝'],);  

  프로그래밍 에서 이둘은 값은 같지만 엄연히 다른 종류이다

  aespa == aespa2 = faluse !!!

  하지만 const instance를 사용하면

  const Idol aespa =new Idol( '에스파',['카리나','윈터','지젤','닝닝'],);  
  const Idol aespa2 =new Idol( '에스파',['카리나','윈터','지젤','닝닝'],);  
 
 aespa == aespa= = true !!
 
 
 
  */

class Aespa {
  String name;
  int age;

  Aespa(this.name, this.age);
}
