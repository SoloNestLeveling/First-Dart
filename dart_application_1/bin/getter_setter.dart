void main() {
  Idol aespa =new Idol(
     '에스파',
     ['카리나','윈터','지젤','닝닝'],
  );  
  print(aespa.firstAespaMember);
  aespa.firstAespaMember ='윈터'; //setter의 기능 값을 바꿀수 있다.
  print(aespa.firstAespaMember);

Idol blackpink = new Idol('블랙핑크', ['지수','로제','제니','리사']);
  
}



//getter - 데이터를 가져올때
//setter - 데이터를 설정할때
//privat (_)을 사용하면 다른 외부 파일로 가져다 쓸수 없다.

class Idol{
 final String name; 
 final List<String> members;


Idol(String name, List<String> members)
: this.name = name, 
this.members = members;


Idol.fromList(List values)
: this.name = values[0],
this.members = values[1];




void sayHello(){
  print('안녕하새여 ${this.name}입니다.'); 
}

void sayMembers(){
  print('저희 맴버는 ${this.members}입니다.');
}


//getter
 String get firstAespaMember{
 return this.members[0];
 }
//------------------------------ 이 둘의 기능적인 차이는 없다
//get 비교적 간단한 로직에서, 함수는 비교적 많은 로직에서 사용

String getFirstMembers(){
  return this.members[0];
}



//setter (하지만 현재 프로그래밍에서는 잘 사용하지 않는다.)
set firstAespaMember(String name){ //파라미터는 무조건 1개만 가능
  this.members[0] =name;

}


}

 