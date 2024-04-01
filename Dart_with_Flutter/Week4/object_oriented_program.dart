import 'dart:io';

// Interface for a shape
abstract class Shape {
  double area();
}

// Base class for geometric shapes
class GeometricShape {
  String name;

  GeometricShape(this.name);

  void displayInfo() {
    print('Name: $name');
  }
}

// Circle class implementing the Shape interface
class Circle extends GeometricShape implements Shape {
  double radius;

  Circle(String name, this.radius) : super(name);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: Circle');
    print('Radius: $radius');
    print('Area: ${area()}');
  }
}

// Rectangle class implementing the Shape interface
class Rectangle extends GeometricShape implements Shape {
  double width;
  double height;

  Rectangle(String name, this.width, this.height) : super(name);

  @override
  double area() {
    return width * height;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Type: Rectangle');
    print('Width: $width');
    print('Height: $height');
    print('Area: ${area()}');
  }
}

// Method to read data from file and create shapes
List<GeometricShape> readShapesFromFile(String fileName) {
  var shapes = <GeometricShape>[];

  try {
    var file = File(fileName);
    var lines = file.readAsLinesSync();

    for (var line in lines) {
      var parts = line.split(',');

      if (parts[0] == 'circle') {
        shapes.add(Circle(parts[1], double.parse(parts[2])));
      } else if (parts[0] == 'rectangle') {
        shapes.add(Rectangle(parts[1], double.parse(parts[2]), double.parse(parts[3])));
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return shapes;
}

// Method demonstrating the use of a loop
void printShapesInfo(List<GeometricShape> shapes) {
  for (var shape in shapes) {
    shape.displayInfo();
    print('-------------------------');
  }
}

void main() {
  var shapes = readShapesFromFile('shapes.txt');
  printShapesInfo(shapes);
}
