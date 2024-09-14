void main(){

TimesTwo tt =TimesTwo(2);
print(tt.calculate());

TimesFour tf =TimesFour(3);
print(tf.calculate());


}

//method - function(클래스 내부에 있는 함수)
//override - 덮어쓰다(우선시하다)

class TimesTwo{
final int number;

TimesTwo(
  this.number,
);

int calculate(){
  return this.number * 2;
}

}

class TimesFour extends TimesTwo{
TimesFour(
  int number
):super(number);

@override
int calculate(){
  return super.number * 4 ; 
}
// 이런식으로 속성을 불러올수 있지만, 부모 method 자체를 불러올수있다,

/* nt calculate(){
  return super.calculate * 2 ;  부모에서 계산된 값 자체를 가져온다, 그럼으로 위랑 값은 동일 
}
*/

}

