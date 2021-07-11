part of '../page/home_page.dart';

Widget _buildFutureBuilder() {
  return FutureBuilder(
    future: dataFuture(),
    builder: (context, snapshot) {
      if (snapshot.hasError) return Text(snapshot.error.toString());

      switch (snapshot.connectionState) {
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
