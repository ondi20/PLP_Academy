import 'dart:io';

void main() {
  // Prompting the user for a number
  stdout.write('Enter a number: ');
  
  // Reading the input from the user
  String input = stdin.readLineSync()!;
  
  // Parsing the input to an integer
  int number = int.tryParse(input) ?? 0;
  
  // Checking the number and printing the message accordingly
  if (number > 10) {
    print('Your number is greater than 10');
  } else if (number < 10) {
    print('Your number is less than 10');
  } else {
    print('Your number is equal to 10');
  }
}