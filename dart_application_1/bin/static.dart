 void main(List<String> args) {
  
Employee winter =Employee('winter');
winter.employeeInfor();

Employee.building='CJ';

winter.employeeInfor();

Employee.employeeBuilding();



}

class Employee{

// static은 instance에 귀속되지 않고 class에 귀속된다.
static String? building;
String name;

Employee(
  this.name,
);

void employeeInfor(){
  print('제 이름은 ${name}입니다, 현재 ${building}에서 근무중 입니다.');
}

static void employeeBuilding(){
  print('저는 $building 건물에서 근무중 입니다.'
  );
}


}
