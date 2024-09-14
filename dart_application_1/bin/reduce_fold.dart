void main(List<String> args) {
  
List<int> numbers = [1,2,3,4,5,6,7,8,9,10];


//reduce는 항상 리스트와 같은 타입으로 리턴해줘야한다.

final result =numbers.reduce((prev, next){

print('-------------------------');  // aroow함수로 더 쉽게 할 수있지만, 변환되는 과정을 볼것!!
print('previouse: ${prev}');
print('next: ${next}');
print('${prev} + ${next}');

return prev + next;
});

print(result);

// arrow  함수로~

final result2 = numbers.reduce((first, second) => first + second);

print(result2);




//---------------------------Fold----------------------------

//fold는 리턴 타입을 지정 할 수있다.
// 그리고 리스트에 첫번쨰 숫자부터 시작하느게 아니라 파라미터 첫번째에 지정해준 숫자부터 시작한다,

final sum =numbers.fold<int>(0, (prev, next) {

print('----------------------------');
print('previouse: $prev');
print('next: $next');
print('$prev + $next');

return prev + next;


});

print(sum);

final sum2 =numbers.fold<int>(0, (previousValue, element) => previousValue + element);

print(sum2);
//-------------------------cascading operator------------------------

//리스트와 리스트를 합쳐서 새로운 리스트를 만든다.

List<int> odd =[1,3,5,7,];
List<int> even =[2,4,6,8,];

//cascading operator
// ...

print([...even, ...odd]);


var userInfor =Person(name: 'winter', age: 12)
  ..toString();

  // .. 점두개로 userInfor를 대체한다. 그리고 ..을 사용하려면 instance끝에 ; 지운다. 



//--------------------------실제 사용법----------------------------------
// 맵 같이 Json 형태로 들어로는 데이터들을 class로 바꿔준다,.


final List<Map<String, dynamic>> aespa = [

{
  'name':'karina',
  'age':24,
},


{
  'name':'gegall',
  'age':24,
},


{
  'name':'winter',
  'age':23,
},


{
  'name':'ning',
  'age':22,
},


];

print(aespa);

//-----------------------------------------------------------------------------------------

//여러가지 functional기능을 가져와서 결합해서 사용가능
final personPeople = aespa.map((x) => Person(
  name: x['name']!, //name이란 값이 실제로 있는지 컴퓨터는 모르기때문에 ! 사용해서 실제로 존재한다고 선언한다.
  age: x['age']!,
  )
  ).toList();

  print(personPeople);  //이렇게 출력하면 class의 기본 값이  instance 어쩌고 라고 나온다, 클래스에서 변경!


final myFavouritMember = personPeople.where( (x) => x.name =='winter');
print(myFavouritMember);

//---------------------------------------------------------------------------------------

//위에 코드를 더 간결하게

final result3 = aespa.map((x) => Person(
  name: x['name']!, 
  age:  x['age']!,
  )
  ).where((x) => x.name =='winter')
  .fold<int>(0, (prev, next) => prev + next.name.length);

print(result3);



}


class Person {
 final String name;
 final int age;

Person({
  required this.name,
  required this.age,
});

@override
String toString(){
  return 'Aespa(name: $name, age: $age)';
}


}


















