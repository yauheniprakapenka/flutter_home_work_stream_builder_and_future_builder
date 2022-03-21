import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/paint_mode_provider.dart';
import '../providers/user_circles_provider.dart';
import '../widgets/ovals_background/circles_background.dart';
import '../widgets/user_cursor/user_cursor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                const CirclesBackground(),
                UserCursor(
                  onPointerDown: (offset) {
                    context.read<UserCirclesProvider>().addUserCircle(offset);
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      context.read<UserCirclesProvider>().clear();
                      context.read<PaintModeProvider>().changeMode(PaintMode.user);
                    },
                    child: const Text('Manual')),
                TextButton(
                    onPressed: () {
                      context.read<PaintModeProvider>().changeMode(PaintMode.random);
                    },
                    child: const Text('Random')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
