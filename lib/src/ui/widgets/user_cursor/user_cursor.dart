import 'package:flutter/material.dart';

class UserCursor extends StatefulWidget {
  final Function(Offset offset) onPointerDown;

  const UserCursor({Key? key, required this.onPointerDown}) : super(key: key);

  @override
  State<UserCursor> createState() => _UserCursorState();
}

class _UserCursorState extends State<UserCursor> {
  final _cursorKey = GlobalKey();
  var _offset = Offset.zero;

  @override
  Widget build(context) {
    return Listener(
      onPointerDown: _updateOffset,
      child: CustomPaint(
        key: _cursorKey,
        painter: _CursorPainter(_offset),
      ),
    );
  }

  void _updateOffset(PointerEvent event) {
    final renderBox = _cursorKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;
    _offset = renderBox.globalToLocal(event.position);
    setState(() {
      widget.onPointerDown(_offset);
    });
  }
}

class _CursorPainter extends CustomPainter {
  final Offset _offset;

  _CursorPainter(this._offset);

  @override
  void paint(canvas, size) {
    canvas.drawCircle(
      _offset,
      10.0,
      Paint()..color = Colors.transparent, // Paint()..color = Colors.green,
    );
  }

  @override
  bool shouldRepaint(_CursorPainter oldDelegate) => oldDelegate._offset != _offset;
}
