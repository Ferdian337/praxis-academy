import 'dart:async';

void hello() async {
  print('something exciting is going to happen here...');
}

void main() async {
  await hello();
  print('all done');
   print("getting employee...");
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");
}

Future<Employee> getEmployee(int id) async {   
  await Future<Employee>.delayed(const Duration(seconds: 2));
  var e = new Employee(id, "Joe", "Coder");
  return e;
}

class Employee {
  int id;
  String firstName;
  String lastName;
  
  Employee(this.id, this.firstName, this.lastName);
}