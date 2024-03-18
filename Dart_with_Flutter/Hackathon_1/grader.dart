import 'dart:io';

// Function to determine the grade based on marks
void determineGrade(int marks) {
  if (marks > 85) {
    print("Excellent");
  } else if (marks >= 75 && marks <= 85) {
    print("Very Good");
  } else if (marks >= 65 && marks < 75) {
    print("Good");
  } else {
    print("Average");
  }
}

void main() {
  stdout.write("Enter the marks: ");
  int? marks = int.parse(stdin.readLineSync()!);

  determineGrade(marks);
}
