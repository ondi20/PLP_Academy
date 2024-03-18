//program that performs two mathematical operations using functions.

// Function to perform addition
double add(double num1, double num2) {
  return num1 + num2;
}

// Function to perform subtraction
double subtract(double num1, double num2) {
  return num1 - num2;
}

void main() {
  double num1 = 10;
  double num2 = 5;

  // Performing addition
  double sum = add(num1, num2);
  print('The sum is: $sum');

  // Performing subtraction
  double difference = subtract(num1, num2);
  print('The difference is: $difference');
}
