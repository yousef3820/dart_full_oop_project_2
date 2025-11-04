import 'package:dart_full_oop_project_2/full_time_employee.dart';

void main(List<String> arguments) {
  FullTimeEmployee fullTimeEmployee = FullTimeEmployee(name: "ali", age: 23);

  fullTimeEmployee.setSalary = 1000;

  print(fullTimeEmployee.salary);

  print(fullTimeEmployee.calculateBonus(20, extraBonus: 20));
}
