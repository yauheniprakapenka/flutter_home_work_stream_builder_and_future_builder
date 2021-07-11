import 'dart:math';

Stream<int> dataStream(int count) async* {
  final random = Random();

  while (count > 0) {
    int randomInt = random.nextInt(200);

    if (randomInt < 20) {
      throw 'Ошибка, число меньше 20';
    } else {
      count = count - 1;
      await Future.delayed(Duration(seconds: 1));
      yield randomInt;
    }
  }
}
