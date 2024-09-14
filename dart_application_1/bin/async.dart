import 'dart_application_1.dart';

void main(List<String> args) async {
  
//--------------------Future--------------------------
//Future 미래에 받아올 값

Future<String> name = Future.value('winter');
Future<int> age = Future.value(23);
Future<bool> isture = Future.value(true);
//-----------------------------------------------------

//delayed 
//2개의 파리미터를맏는다.
//1번 파라미터 - 지연할 시간(얼마나 지연할건지) Duration
//2번 파라미터 - 지연 시간이 지난 후 실행할 함수.
// Future.delayed(Duration(seconds: 2),(){ 2번파라미터});
//딜레이 되는동안 cpu가 멈추지않고 딜레이 선언후 다음 것을 바로 실행한다! 이것이 Async'
  
  

await addNumbers2(1,1);
await addNumbers2(2,2);


}

//-------------------await--------------------------
//위웨서 증명했다시피 futer 딜레이를 사용하면 async 되어 기다리는 시간동안 멈추지 않고 다음것을 바로실행한다,
//하지만 이럴경우 실행 순서가 바뀌어서 나중에 더 복잡해 질 수있다.
//그런것을 방지 하지위해 awit를 사용한다. 사용시 파라미터 뒤에 async라고 무조건 선언해줘야 한다.
//위에 코드와 같은 코드를 사용해서 비교해보자!

Future<void> addNumbers2(int number1, int number2) async {
print('계산시작 $number1 + $number2');


await Future.delayed(Duration(seconds:2),(){
print('계산완료: $number1 +$number2 = ${number1 + number2}');

});

print('함수완료');

}

// async , await를 해줌으로써 딜레이 되는동안 밑에 작없을 실행하지 않고
// 다른작업을 찾다가 addNumbers2(2+2);를 실행한다.
// 그런데 더 나아가서 만약 (1+1); 값이 모두실행된 이후 addNumbers2(2+2);를 실행해 주고 싶으면
// main 자체에 async를 선언하고 addNumbers2 함수를 Future로 감싼다!!!
// 그리고 나서 실행 함수에 await를 선언한다. 
//await addNumbers2(1,1);
//await addNumbers2(2,2);


//return도 가능!! 위에코드를 리턴한것.


/* final result1 = await addNumbers2(1,1);
final result2  = await addNumbers2(2,2);

print('result1: $result1');
print('result2: $result2');
print('result1 +result2 = ${result1 + result2}');


Future<int> addNumbers2(int number1, int number2) async {
print('계산시작 $number1 + $number2');


await Future.delayed(Duration(seconds:2),(){
print('계산완료: $number1 +$number2 = ${number1 + number2}');

});

print('함수완료');

return number1 + number2;

}
*/