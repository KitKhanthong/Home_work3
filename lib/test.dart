void main() {
  Person p1 = new Person("kit","khanthong",20,finger: 9);
  Person p2 = new Person("x","y",21);
  p1.a();
}

class Person {
  final String firstName;
  final String lastName;
  final int age;
  int finger;
  //positional parameter, named parameter
  Person(this.firstName, this.lastName, this.age, {this.finger=10});

  void a(){
    print('aAaAa');
  }


}