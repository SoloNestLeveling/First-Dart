import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

enum Status{
  login,
  logout,
  unknown,
  
}

void main() {
  num a = 1;
  num b = 2;
  print(a + b);

  a = 5;
  print(a + b);

  //값을 변수에 저장 하기
  a += 1;
  print(a);
  a -= 1;
  print(a);

  a *= 1;
  print(a);

  Map<String, String> englishTranslation = {
    "tell me about it": "말도마...",
    "maybe that's why": "그래서 그런가",
  };

  print(englishTranslation);

  englishTranslation.addAll({"might as well": "~하는 편이 좋겠다"});
  print(englishTranslation);

  print(englishTranslation["tell me about it"]);

  Map<String, dynamic> userInfor = {
    "name": "winter",
    "age": 23,
  };
  print(userInfor["age"]);

  String favouritMember = "kd";

  switch (favouritMember) {
    case "kd":
      print("맞습니다.");
      break;
  }

  int total = 0;

  List<int> numbers = List.generate(100, (index) => index + 1);

  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  //another method 위 코드와 완전히 같은거!!

  for (int number in numbers) {
    total += number;
  }
  print(total);

  total = 0;

  while (total < 10) {
    total += 1;
  }
  print(total);


Status singUp = Status.unknown;
  
  if(singUp ==  Status.login ){
    print("로그인 되셨습니다.");
    
  }else if(singUp ==Status.logout){
    print("로그아웃 되셨습니다");
  }else{
    print("로그인 해주세요");
  }
  
  
int result = addNumbers(10,40,100);
int result2 = addNumbers(30,30);
  print('result: ${result}');
  print('result2: ${result2}');
  print('sum: ${result + result2}');
  
  

}
//optional parameter - 있어도되고 없어도 되는 건 [] 이걸로 닫아준다.
//그리고 옆에 =붙이고 임의의 값을 적는다

//named parameter- 이름이 있는 파라미터, 순서를 상관하지 않음
/*{requirded int x,} 이런식으로 선언, 여기서 required만
제거해주면 optional 기능을 한다. 그리고 함수를 실행할떄
positional은 안에 값만 입력하면 되지만 optional은 'x: 10'
이런식으로 해준다*/
//만약 값을 입력하지 않을시 미리 default한 값을 출력할 수있다.
//required를 선언 함으로써 파라미터 값을 반드시 입력해야 한다는것을 의한다.


/* return!! 함수 앞에는 void가 생략된 상태다, void를 적어도
  되고 생략 해도된다. void뜻은 반환하는 값이 없음을 뜻한다.
 즉, return 하고 싶다면 void를 지우고 그자리에 return 타입을
 적어준다.*/

//arrow function- 화살표함수 , => 화살표가 가리키는 값을 반환한다.

int addNumbers(int x, [int y= 0 ,int z= 0]){
  int sum = x + y + z;
  
  print('x:${x}');
  print('x:${y}');
  print('x:${z}');
  
  if(sum % 2 ==0){
    print("짝수입니다.");
  }else{
    print("홀수입니다.");
  }

return sum;
  

}





/* final 과 const 는 값을 한번 실행하면 바꿀수 없다
 즉, var name = "";
   const String name ="";
  final String name ="";
  이 값들은 변수를 변경할 수가 없다.
  
  변수를 변경할 수 있는 경우
  타입을 직접 지정한 경우 - String,int,double.bool
  또는 dynmic name =""; 
  
  
  final과 const 차이 const는 실행할때 빌드 값이 없으면 실행이 안된다,
  DateTime.now는 코드가 실행된후 그시점에 시간을 가져오는데
  const DateTime now = DateTime.now 라고 하면 실행 빌드값이 없음으로
  실행이 안된다,

dart에서 const는 compile-time constant를 만들어준다.
const는 컴파일할 때 알고 있는 값을 사용해야 한다.
만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 
그건 const가 아닌 final이나 var가 되어야 한다.


  
  late
  -late를 사용하면 값 설정 없이 변수를 선언할수 있다, 그리고 나중에 API로 부터 변수 값을 받을수 있다.
  late final name;
  name = 'winter';
  
  
  null
  String? name="winter";
  name = null;
  ?를 붙이면 null 값을 넣을수 있다
  
  그리고
  name ?? = 'beatiful';
  
  ??란 만약 name이 null이라면 오른쪽 값으로 바꿔라!
  
  
  
  *array(List)
  다트에서 배열 만들기
  List<타입>  변수이름=[]
  추가하는법 - 변수이름.add();
  제거하는법 - 변수이름.remove();
  원하는 위치에 추가하기 - 변수이름.insert(순서,"");

  collection if
  -예시
  final giveMeFive = true;
  var numbers =[1,2,3,4,if(giveMeFive)5,];
  giveMeFive가 true면 5를 추가해 준다.
  

  
  
  *set 
  set은 List와 비슷하고 차이점은 중복을 자동으로 제거한다는 것!
  
  
  *Map 사용법
  
  Map<키값:String, 벨류값:String> englishTranslation = {
    "tell me about it": "말도마...",
    "maybe that's why": "그래서 그런가",
  };

  print(englishTranslation);

  .추가하기
  (1). englishTranslation.addAll({"might as well": "~하는 편이 좋겠다"});
  (2). englishTranslation["키값"]="벨류값";
  
  .제거하기
  englishTranslation.remove('키값');

  .특정값 출력
  print(englishTranslation["tell me about it"]);
}

 *if문 자바스크립트랑 동일
 
 *switch문
 
 예시
  String favouritMember ="winter";
  
  switch(favouritMember){
    case "winter":    >>favouritMember가 "winter" 라면
    print("맞습니다.");
    break;
    
 }default:   //default는 if문의 else 역할이다
  print("틀립니다.";);
  break;
    
    
   if문에서 길게 연장하려면 else if를 사용하는데
   switch문에서는 case로 이어서 해주면 된다
   그리고 마지막은 default.
    
    
    
  *loop(for , for-in , while, do(안씀))
      
      
  int total = 0;

  List<int> numbers = List.generate(100, (index) => index + 1);

  for (int i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  print(total);

  //another method 위 코드와 완전히 같은거!!

  for (int number in numbers) {
    total += number;
  }
  print(total);
}
    
    
    
    *break = 전체 과정을 stop
    *continue = 현재 과정만 stop

예시)
 
 for(int i=0; i<10; i++){
 
 if(i==5){
 break;   //이럴경우 전체를 stop하고 5만 출력한다.
 }
 
 }
    
    for(int i=0; i<10; i++){
 
 if(i==5){
 cintinue;   //이럴경우 현재 값에 도달하면 
 현재 값만 stop하고 조건을 계속 실행한다. 결국 5만 제외하고
 0,1,2,3,4,6,7,8,9만 출력된다.
 }
 
 }
 


*enum
enum은 void위에 값을 입력한다.

enum Status{
  login,
  logout,
  unknown,
  
}이런 식으로 값을 설정하면 

Status. 을 했을때 위에 설정한 값들이 나온다

값의 이름은 알아서 직관적으로 디폴트한다.




Status singUp = Status.unknown;
  
  if(singUp ==  Status.login ){
    print("로그인 되셨습니다.");
    
  }else if(singUp ==Status.logout){
    print("로그아웃 되셨습니다");
  }else{
    print("로그인 해주세요");
  }
  
 
 
  
  */
