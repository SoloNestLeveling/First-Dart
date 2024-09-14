import 'package:test/test.dart';

void main(List<String> args) {
  
List<Map<String,String>> people=[
{
  'name': 'winter',
  'group': 'aespa',

},

{
  'name': 'kyung-min',
  'job': 'front-end-developer',

},

{
  'name': 'karina',
  'group': 'aespa',

},
];

print(people);

// where는 true값만 출력하고 faluse값은 삭세한다
// 필터링 효과, 상당히 많이 사용한다.

final aespa = people.where((x) => x['group'] == 'aespa').toList();

print(aespa);



}