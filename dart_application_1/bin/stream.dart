import 'dart:async'; //stream은 기본적으로 제공되는 패키지가 아님으로 패키지를 불러와야한다.

void main(List<String> args) {

playAllStream().listen((val) {
  print(val);
});


}


Stream<int> playAllStream() async*{
  yield* calculate(1);             // 1값이 전부 실행된 이후 1000값이 실행된다
  yield* calculate(1000);          // await랑 비슷한 기능
}


Stream<int> calculate(int number) async* {
for(int i = 0; i < 5; i++){
  yield i * number;

  await Future.delayed(Duration(seconds: 1)); //async* 에서도 똑같이 await를 헤줄 수 있다.
}
}







//--------------------------- @@stream 기본@@---------------------------------------

//streamController를 실행하면 stream을 불러올수있다.
//기본적으로 listen은 한번만 실행가능하다. 제한없이 하고싶으면 .asBroadcastStream을 사용한다!!
//functional 프로그램을 응용 할 수도 있다.

/* final controller=StreamController();
   final stream = controller.stream.asBroadcastStream();

  
  final streamListener1 = stream.where((event) => event % 2 ==0).listen((event) {
   print('Listener1: $event');
  });

 
 final streamListener2 = stream.where((event) => event % 2 == 1).listen((event) {
   print('Listener2: $event');
  });




controller.sink.add(1); //위에 streamListener를 실행하는법
controller.sink.add(2);
controller.sink.add(3);
controller.sink.add(4);
controller.sink.add(5);
*/