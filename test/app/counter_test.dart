import 'package:flutter_test/flutter_test.dart';
import 'package:xylophone/app/counter.dart';

void main() {
  test("value should be incremented", () {
    final counter = Counter();
    counter.increment();
    expect(counter.value, 1);
  });
  test("value should be decremented", () async {
    final counter = Counter();
    await counter.decrement();
    expect(counter.value, -1);
  });
  test("double value decrement", () async {
    final counter = Counter();
    await counter.decrement();
    await counter.decrement();
    expect(counter.value, -2);
  });
}
