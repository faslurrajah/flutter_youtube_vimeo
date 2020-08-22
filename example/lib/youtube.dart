import 'package:flutter/material.dart';
import 'package:flutter_youtube_vimeo/flutter_youtube_vimeo.dart';

void main() => runApp(YouTube());

class YouTube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: YouVimPlayer('youtube', '9w6ZysXw1b0'),
      ),
    );
  }
}
