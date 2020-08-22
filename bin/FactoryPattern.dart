import 'dart:math';

abstract class Shape {
  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }

  num get area;
}

class Circle implements Shape {
  final num radius;

  Circle(this.radius);

  @override
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;

  Square(this.side);

  @override
  num get area => pow(side, 2);
}

void main(List<String> args) {
  // final circle = Circle(2);
  // final square = Square(2);
  // print('Area of Circle with radius: ${circle.radius} is ${circle.area}');
  // print('Area of Square with side: ${square.side} is ${square.area}');
  try {
    final circle = Shape('circle');
    final square = Shape('square');
    print(circle.area);
    print(square.area);
    final square1 = Shape('square1');
    print(square1.area);
  } catch (exception) {
    print('Exception handled via try-catch: ${exception.toString()}');
  }
}
