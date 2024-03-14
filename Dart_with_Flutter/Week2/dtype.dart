void main() {
  // Demonstrating int data type
  int age = 25; // Declaring an integer variable
  print('Age: $age');

  // Demonstrating double data type
  double height = 6.2; // Declaring a double variable
  print('Height: $height feet');

  // Demonstrating String data type
  String name = 'John Doe'; // Declaring a String variable
  print('Name: $name');

  // Demonstrating List data type
  List<int> numbers = [1, 2, 3, 4, 5]; // Declaring a list of integers
  print('Numbers: $numbers');
  
  // Accessing elements in the list
  print('First number: ${numbers[0]}');
  print('Last number: ${numbers[numbers.length - 1]}');

  // Demonstrating Map data type
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 30,
    'isStudent': false
  }; // Declaring a map with string keys and dynamic values
  print('Person: $person');

  // Accessing elements in the map
  print('Name: ${person['name']}');
  print('Age: ${person['age']}');
  print('Is Student: ${person['isStudent']}');
}
