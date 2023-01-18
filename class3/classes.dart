class Person {
  //Variables
  String name = 'Ahmed';
  int age = 20;
  String address = 'Cairo';
}

void main(List<String> args) {
  //1. Create an object from the Person class
  Person person = Person();
  //2. Print the name of the person
  print(person.name);
  //3. Print the age of the person
  print(person.age);
  //4. Print the address of the person
  print(person.address);

  //5. Create another object from the Person class
  Person person2 = Person();
  //6. Put Another name of the person
  person2.name = 'Ali';
  //7. Put Another age of the person
  person2.age = 30;
  //8. Put Another address of the person
  person2.address = 'Alex';

  //9. Print the name of the person
  print(person2.name);
  //10. Print the age of the person
  print(person2.age);
  //11. Print the address of the person
  print(person2.address);
}
