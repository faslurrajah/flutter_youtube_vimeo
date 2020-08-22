import 'package:example/vimeo.dart';
import 'package:example/youtube.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube_vimeo/flutter_youtube_vimeo.dart';

void main() => runApp(MaterialApp(home: Scaffold(body: Home())));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => YouTube()));
                },
                child: Text('Youtube'),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Vimeo()));
                },
                child: Text('Vimeo'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
