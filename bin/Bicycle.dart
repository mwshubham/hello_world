class Bicycle {
  int cadence;

  // private instance variable
  int _speed = 2;

  // getter
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrakes(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() {
    return 'cadence: $cadence, speed: $speed, gear: $gear';
  }
}

void main(List<String> args) {
  var bicycle = Bicycle(1, 3);
  print(bicycle);
}
