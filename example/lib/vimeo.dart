import 'package:flutter/material.dart';
import 'package:flutter_youtube_vimeo/flutter_youtube_vimeo.dart';

void main() => runApp(Vimeo());

class Vimeo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(child: YouVimPlayer('vimeo', '447872160')),
      ),
    );
  }
}
