void main(List<String> args) {
  
List<String> aespa =['winter','karina','gegall','ning ning'];

//-------------------------------Map핑하기-----------------------------------------

//Map핑하기 loop기능을 함, 하나의 형태에서 다른 형태로 바꿀떄

final newAespa = aespa.map((x){ //x 값으로 리스트 value들이 하나씩 계속 들어온다.
 return  'aespa $x'; //의미: x값을 return 값으로 바꾸고 리턴한다.
});
//원래의 리스트 값은 변하지 않는다.
print(aespa);
print(newAespa.toList());
//literable 형태로 출력되니 리스트로 변경


//더 간단하게 하는법 arrow 함수를 사용한다!!!!!!!

final newAespa2 = aespa.map( (x) => 'aespa $x' );

print(newAespa2.toList());


//----------------------------------실제 사용 사례--------------------------------------


//[1.jpg, 2.jpg, 3.jpg]

//<내가 생각한 방법>
List<String> numbers =['1','2','3','4','5'];


final numberJpg = numbers.map((x) => '$x.jpg');

print(numberJpg.toList());

//<코드팩토리님 방법>

String numers ='12345';
 
final numberJpg2 = numers.split('').map((x) => '$x.jpg').toList();

print(numberJpg2);
// split('') 아무것도 넣지 않고 String하면 리스트로 변경한다.


//------------------------------<map을 map핑하기!>----------------------------------------





//MapEntry를 이용한다. but 생각보다 map을 통째로 map핑하는 경우는 그리많지 않다...

Map<String, String> harryPotter = {
'Herry Potter': '해리 포터',
'Ron Weasley': '론 위즐리',
'hermione Granger':'헤르미온느 그레인져'
};

final harryPotterMap = harryPotter.map((key, value) => MapEntry(
  'Character name in English $key',
  'Character name in Korean $value',
  
  )
);

print(harryPotterMap);



//map은 키값 벨류겂을 따로 맵핑하는 경우는 꽤 있다,

final keys =harryPotter.keys.map((x) => 'FUN $x');
final values = harryPotter.values.map((x) => '재미있는 $x');

print(keys);
print(values);



//-----------------------------------set 맵핑-------------------------------------

Set fruits ={
  '사과',
  '바나나',
  '포도',
  '수박',
};

final fruitsMap = fruits.map((x) => '맛있는 $x').toSet();

print(fruitsMap);

// 뒤에 toSet을 해줘야 set의 기능을 잃지 않는다.
















//------------------------------------------------------------------------

//list를 map으로 변경하기
//변경하는 이유는 리스트를 map처럼 사용하기 위해

Map aespaMap = aespa.asMap();
print(aespaMap.keys.toList());
print(aespaMap.values.toList());
//값 출력시 () 이런식의 literable 형태로 출력된다.
//literable 형태도 리스트의 한 종류 이지만, 잘사용하지 않고
// 리스트 형태로 변경해준다,
//리스트로 변경법 뒤에 .toList를 입력한다.


//list를 set으로 변경하기
//변경하는 이유 리스트를 set처럼 사용하기 위해
//set은 중복을 제거한다.

Set aespaSet = Set.from(aespa);
print(aespaSet.toList());


}

