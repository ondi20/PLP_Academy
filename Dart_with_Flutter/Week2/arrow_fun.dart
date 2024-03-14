/*Task 1
Write a function called addTwo that takes two numbers as arguments and returns the sum of those two numbers.
*/
int addTwo(int a, int b) => a + b;

/*Task 2
Write a function called subtractTwo that takes two numbers as arguments and returns the difference of those two numbers.
*/
int subtractTwo(int a, int b) => a - b;

/*
Task 3
Write a function called multiplyTwo that takes two numbers as arguments and returns the product of those two numbers.
*/

int multiplyTwo(int a, int b) => a * b;

/*
Task 4
Write a function called divideTwo that takes two numbers as arguments and returns the quotient of those two numbers.
*/
double divideTwo(double c, double d) => c / d;

/*
Task 5
Write a function called stringLength that takes an argument of type String and returns the length of that string.
*/
int stringLength(String schoolName) => schoolName.length;

/*
Task 6
Write a function called getFirstElement that takes a list as an argument and returns the first element of that list.

*/
String getFirstElement(List<String> names) => names[0];

void main() {
  int a = 10;
  int b = 5;
  double c = 123.0;
  double d = 23.0;
  String schoolName = "Power Learn Project";
  List<String> names = ["John", "James", "Peter"];

  int sum = addTwo(a, b);

  int result = subtractTwo(a, b);

  int multiply = multiplyTwo(a, b);

  double divide = divideTwo(c, d);

  int length = stringLength(schoolName);

  String list = getFirstElement(names);

  print("this equals to $sum");

  print("this equals to $result");

  print("this equals to $multiply");

  print("this equals to $divide");

  print("this equals to $length");

  print("this equals to $list");
}
