import 'dart:io';

void main(){
  // Variable name
  var name = 'Bob';
  int lineCount = 2;
  assert(lineCount == null);

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

  final String nickname = 'Bobby';
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere
  final baz = const [bar];
  print (baz);
  var hex = 0xDEADBEEF;
  var exponents = 1.42e5;
  print(exponents);

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');

  var fullName = '';
assert(fullName.isEmpty);

  // Check for zero.
  var hitPoints = 0;
  assert(hitPoints >= 0);


  // Check for null.
  var unicorn = true;
  assert(unicorn ? null : throw "true");

  // Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);

  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (unicorn = true) 'Outlet'
];
  print (nav);

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  var gifts = {
  // Key:    Value
  'first': false,
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
  print(gifts['second']);

  var wf = new WannabeFunction();
  var out = wf("Hi","there,","gang");
  print(out);



void enableFlags({bool bold, bool hidden}){

}

try {
  String input = stdin.readLineSync();
  print(int.parse(input));
} catch (e) {
  print("input harus angka");
}

assert(2 + 3 == 5);
assert(2 - 3 == -1);
assert(2 * 3 == 6);
assert(5 / 2 == 2.5); // Result is a double
assert(5 ~/ 2 == 2); // Result is an int
assert(5 % 2 == 1); // Remainder

assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');
var a, b;

a = 0;
b = ++a; // Increment a before b gets its value.
assert(a == b); // 1 == 1

a = 0;
b = a++; // Increment a AFTER b gets its value.
assert(a != b); // 1 != 0

a = 0;
b = --a; // Decrement a before b gets its value.
assert(a == b); // -1 == -1

a = 0;
b = a--; // Decrement a AFTER b gets its value.
assert(a != b); // -1 != 0

final value = 0x22;
final bitmask = 0x0f;

assert((value & bitmask) == 0x02); // AND
assert((value & ~bitmask) == 0x20); // AND NOT
assert((value | bitmask) == 0x2f); // OR
assert((value ^ bitmask) == 0x2d); // XOR
assert((value << 4) == 0x220); // Shift left
assert((value >> 4) == 0x02); // Shift right

var isPublic = true;
var visibility = isPublic ? 'public' : 'private';

// Slightly longer version uses ?: operator.
String playerName(String name) => name != null ? name : 'Guest';

var command = 'CLOSED';
switch (command) {
  case 'CLOSED':
    executeClosed();
    continue nowClosed;
  // Continues executing at the nowClosed label.

  nowClosed:
  case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}
   var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.

  for (int i = 0; i < 5; i++) {
    point.x++;
  }

  while (true){
    point.x ++;
    if (point.x > 10){
      break;
    }
  }
}

class WannabeFunction {
  call(String a, String b, String c) => '$a $b $c!';
}

void executeClosed(){}
void executeNowClosed(){}

class Point {
  num x;
  num y;
}
