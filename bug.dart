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
  MyClass obj = MyClass();
  print(obj.myVariable); // Output: 0

  obj.myVariable = 10;
  print(obj.myVariable); // Output: 10

  try {
    obj.myVariable = -5; // Throws ArgumentError
  } catch (e) {
    print('Error: $e'); // Output: Error: Value cannot be negative
  }
}
```