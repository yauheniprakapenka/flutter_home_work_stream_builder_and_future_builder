
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/paint_mode_provider.dart';
import '../../providers/user_circles_provider.dart';
import 'painters/random_ovals_painter.dart';
import 'painters/user_ovals_painter.dart';

class CirclesBackground extends StatelessWidget {
  const CirclesBackground({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return RepaintBoundary(
      child: CustomPaint(
        key: UniqueKey(),
        painter: _getCustomPainter(context),
        isComplex: true,
      ),
    );
  }

  CustomPainter _getCustomPainter(BuildContext context) {
    switch (context.watch<PaintModeProvider>().mode) {
      case PaintMode.user:
        return UserOvalsPainter(context.watch<UserCirclesProvider>().userCircles);
      case PaintMode.random:
        return RandomOvalsPainter(MediaQuery.of(context).size);
    }
  }
}
