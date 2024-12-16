```dart
class MyClass {
  int? _myVariable; // Private variable

  int get myVariable => _myVariable ?? 0; // Getter with default value

  set myVariable(int value) {
    if (value < 0) {
      throw ArgumentError('Value cannot be negative');
    }
    _myVariable = value;
  }
}

void main() {
  final myObject = MyClass();
  print(myObject.myVariable); // Prints 0

  myObject.myVariable = 10;
  print(myObject.myVariable); // Prints 10

  try {
    myObject.myVariable = -5; // Throws ArgumentError
  } catch (e) {
    print('Error: $e');
  }
}
```