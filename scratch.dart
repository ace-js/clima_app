import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String t2 = await task2();
  task3(t2);
}

void task1() {
  print('task 1 completed');
}

Future<String> task2() async { // Future<T> specified that the returned value ll come asynchronously
  Duration twoSeconds = Duration(seconds: 2);
  String result;
  await Future.delayed(twoSeconds, () {
    result = 'Task 2 data';
    print('task 2 completed');
  });

  return result;
}

void task3(String data) {
  print('task 3 completed: $data');
}
