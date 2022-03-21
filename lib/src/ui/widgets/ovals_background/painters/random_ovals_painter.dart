
import 'package:flutter/material.dart';

import '../utils/get_random_color.dart';
import '../utils/random_from_range.dart';

class RandomOvalsPainter extends CustomPainter {
  final Size _screenSize;

  RandomOvalsPainter(this._screenSize);

  @override
  void paint(canvas, size) {
    const ovalSize = 200.0;
    const halfOvalSize = ovalSize * 0.5;

    for (var i = 0; i < 75; i++) {
      final dx = randomIntFromRange(-halfOvalSize, _screenSize.width + halfOvalSize).toDouble();
      final dy = randomIntFromRange(-halfOvalSize, _screenSize.height + halfOvalSize).toDouble();
      canvas.drawOval(
        Rect.fromCenter(
          center: Offset(dx, dy),
          height: ovalSize,
          width: ovalSize * 0.8,
        ),
        Paint()..color = getRandomColor(),
      );
    }
  }

  @override
  bool shouldRepaint(RandomOvalsPainter oldDelegate) => false;
}
