import 'dart:math';

import 'package:flutter/material.dart';

Color getRandomColor() {
  const _colors = [
    Colors.orange,
    Colors.purple,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.grey,
    Colors.brown,
  ];

  return _colors[Random().nextInt(_colors.length)].withOpacity(0.3);
}
