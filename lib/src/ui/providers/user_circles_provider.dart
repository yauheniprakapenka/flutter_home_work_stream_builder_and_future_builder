import 'dart:collection';

import 'package:flutter/material.dart';

import '../models/user_circle.dart';
import '../widgets/ovals_background/utils/get_random_color.dart';

class UserCirclesProvider extends ChangeNotifier {
  final _userCircles = Queue<UserCircle>();

  Queue<UserCircle> get userCircles => _userCircles;

  void addUserCircle(Offset offset) {
    _userCircles.add(UserCircle(offset: offset, radius: 50, color: getRandomColor()));
    notifyListeners();
  }

  void clear() {
    _userCircles.clear();
    notifyListeners();
  }
}
