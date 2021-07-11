part of '../page/home_page.dart';

Widget _buildStreamWidget() {
  return StreamBuilder(
    stream: dataStream(20),
    builder: (context, snapshot) {
      if (snapshot.hasError) return Text(snapshot.error.toString());

      switch (snapshot.connectionState) {
        case ConnectionState.active:
          return Text(snapshot.data.toString());
        case ConnectionState.waiting:
          return CircularProgressIndicator();
        case ConnectionState.done:
          return Text(snapshot.data.toString());
        default:
          return Text('');
      }
    },
  );
}
