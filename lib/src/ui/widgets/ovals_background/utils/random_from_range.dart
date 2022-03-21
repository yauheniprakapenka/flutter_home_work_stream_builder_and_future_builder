import 'dart:math';

int randomIntFromRange(num from, num to) {
  final fromAbs = from.abs().toInt();
  final absoluteValue = (fromAbs + to.abs()).toInt();
  const inclusiveMaxValue = 1;
  final random = Random().nextInt(absoluteValue + inclusiveMaxValue);
  return random - fromAbs;
}
