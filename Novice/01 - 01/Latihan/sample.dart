// Importing core libraries
import 'dart:math';

void main() {
  print('Hello, World!');

// Variables
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
  };
  
  // Control flow statements
  if (year >= 2001) {
  print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (var object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2016) {
    year += 1;
  }

//Functions
  int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
  }

  var result = fibonacci(20);
}