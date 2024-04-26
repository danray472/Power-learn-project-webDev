import 'dart:io';

// 1. Object-oriented model with classes and inheritance
class Animal {
  String name;
  
  Animal(this.name);
  
  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  
  @override
  void makeSound() {
    print('Woof');
  }
}

// 2. Class that implements an interface
abstract class Drawable {
  void draw();
}

class Circle implements Drawable {
  @override
  void draw() {
    print('Drawing Circle');
  }
}

// 3. Class that overrides an inherited method
class Cat extends Animal {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print('Meow');
  }
}

// 4. Instance of a class initialized with data from a file
class Person {
  String name;
  int age;
  
  Person(this.name, this.age);
}

Person createPersonFromFile(String filePath) {
  File file = File(filePath);
  List<String> lines = file.readAsLinesSync();
  String name = lines[0];
  int age = int.parse(lines[1]);
  return Person(name, age);
}

// 5. Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // 1. Object-oriented model with classes and inheritance
  Animal animal = Dog('Buddy');
  animal.makeSound(); // Output: Woof
  
  // 2. Class that implements an interface
  Circle circle = Circle();
  circle.draw(); // Output: Drawing Circle
  
  // 3. Class that overrides an inherited method
  Animal cat = Cat('Whiskers');
  cat.makeSound(); // Output: Meow
  
  // 4. Instance of a class initialized with data from a file
  Person person = createPersonFromFile('person_data.txt');
  print('Name: ${person.name}, Age: ${person.age}');
  
  // 5. Method demonstrating the use of a loop
  printNumbers(5); // Output: 1, 2, 3, 4, 5
}
