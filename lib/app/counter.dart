class Counter {
  var value = 0;
  void increment() {
    value++;
  }

  Future decrement() async {
    await Future.delayed(const Duration(seconds: 2));
    value--;
  }
}
