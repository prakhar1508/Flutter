import 'mycentral.dart';

void main() {
  // instantiation
  var visitor1 = VisitorForm(name: "Prakhar", mobile: 998383, gender: "Male");
  // var visitor2 = VisitorForm("Smith", "Male", 88442);
  VisitorForm visitor3 = VisitorForm(name: "Emma", gender: "Female");
  print(visitor1.name);
  print(visitor1.gender);
  print(visitor3.mobile);
  print(visitor3.name);
}
