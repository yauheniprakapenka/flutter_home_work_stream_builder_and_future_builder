import 'package:flutter/material.dart';
import 'package:skillbox_stream_builer_and_future_builder/domain/utils/data_stream.dart';
import 'package:skillbox_stream_builer_and_future_builder/domain/utils/data_future.dart';

part '../components/stream_widget.dart';
part '../components/future_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isRandonGenerated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future / Stream'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Future builder'),
                if (_isRandonGenerated)
                  Center(
                    child: _buildFutureBuilder(),
                  ),
              ],
            ),
          ),
          Divider(height: 20, thickness: 4),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Stream builder'),
                if (_isRandonGenerated)
                  Center(
                    child: _buildStreamWidget(),
                  ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _isRandonGenerated = !_isRandonGenerated;
          setState(() {});
        },
        child: Icon(
          _isRandonGenerated ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
