
import 'dart:collection';

import 'package:flutter/material.dart';

import '../../../models/user_circle.dart';

class UserOvalsPainter extends CustomPainter {
  final Queue<UserCircle> userCircles;

  UserOvalsPainter(this.userCircles);

  @override
  void paint(canvas, size) {
    for (final circle in userCircles) {
      canvas.drawCircle(circle.offset, circle.radius, Paint()..color = circle.color);
    }
  }

  @override
  bool shouldRepaint(UserOvalsPainter oldDelegate) => false;
}
