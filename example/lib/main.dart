import 'package:flutter/material.dart';
import 'package:flutter_youtube_vimeo/flutter_youtube_vimeo.dart';

void main() => runApp(Home());


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: YouVimPlayer('youtube','9w6ZysXw1b0')
        ),
      ),
    );
  }
}
//Column(
//children: [
//RaisedButton(
//onPressed: (){
//Navigator.push(context, MaterialPageRoute(builder: (context) => YouVimPlayer('youtube','9w6ZysXw1b0')));
//
//},
//child: Text('Youtube'),
//),
//SizedBox(height: 10,),
//RaisedButton(
//onPressed: (){
//Navigator.push(context, MaterialPageRoute(builder: (context) => YouVimPlayer('vimeo','447872160')));
//
//},
//child: Text('Vimeo'),
//)
//],
//),