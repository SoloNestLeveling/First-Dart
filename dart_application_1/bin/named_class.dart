void main(List<String> args) {
  var aespa = Idol.creatAespa(
    name: 'winter',
    age: 23,
  );
  print(aespa.name);
  print(aespa.age);
  print(aespa.group);

//final aespaMamber = AespaJson()
}

class Idol {
  String name;
  int age;
  String group;

  Idol.creatAespa(
      {required String name, required int age, String group = 'winter'})
      : name = name,
        age = age,
        group = 'aespa';
}

class AespaJson {
  String name, form;
  int age;

  AespaJson.fromJson(Map<String, dynamic> aespaInfor)
      : name = aespaInfor['name'],
        form = aespaInfor['fome'],
        age = aespaInfor['age'];
}
