void main(List<String> args) {
  
UserName<int, String> username =UserName(33333, 'winter');
username.typeKind();

}


//generic이란 타입을 외부에서 받을때 사용, 타입을 첨음 부터 정하지 않고 나중에 유동적으로 
//바꿀수 있는 <> 이런걸 generic이라고 한다.
class UserName<T,X>{

final T id;
final X name;

UserName(
  this.id,
  this.name,
);

void typeKind(){
  print(id.runtimeType);
  print(name.runtimeType);
}

}