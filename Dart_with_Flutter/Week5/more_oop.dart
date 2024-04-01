// Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printInfo() {
    print('Student: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  // Constructor
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printInfo() {
    print('Teacher: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

// Class to create student and teacher objects
class School {
  void printStudentAndTeacherInfo(Student student, Teacher teacher) {
    student.printInfo();
    print('-------------------');
    teacher.printInfo();
  }
}

void main() {
  // Create student and teacher objects
  var student = Student('Alice', 16, 10);
  var teacher = Teacher('Mr. Smith', 35, 'Mathematics');

  // Create School object
  var school = School();

  // Call method to print student and teacher information
  school.printStudentAndTeacherInfo(student, teacher);
}
