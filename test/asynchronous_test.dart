import 'package:test/test.dart';

void main() {
  test('new Future.value() returns the value with completion', () {
    var value = Future.value(10);
    expect(value, completion(10));
  });
}
