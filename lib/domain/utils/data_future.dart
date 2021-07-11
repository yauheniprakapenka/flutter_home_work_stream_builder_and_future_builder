import 'dart:math';

Future<String> dataFuture() async {
  final random = Random();

  final response = await Future.delayed(Duration(seconds: 1), () {
    return random.nextBool();
  });

  return (response)
      ? 'Данные успешно получены'
      : throw 'Ошибка загрузки данных';
}
