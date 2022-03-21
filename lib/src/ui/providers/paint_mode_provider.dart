import 'package:flutter/foundation.dart';

class PaintModeProvider extends ChangeNotifier {
  var _currentPaintMode = PaintMode.user;

  PaintMode get mode => _currentPaintMode;

  void changeMode(PaintMode paintMode) {
    _currentPaintMode = paintMode;
    notifyListeners();
  }
}

enum PaintMode {
  user,
  random,
}
