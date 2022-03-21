import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/ui/pages/home_page.dart';
import 'src/ui/providers/paint_mode_provider.dart';
import 'src/ui/providers/user_circles_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PaintModeProvider()),
        ChangeNotifierProvider(create: (_) => UserCirclesProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    ),
  );
}
