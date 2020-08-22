library flutter_youtube_vimeo;

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'YouVimPlayer',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

// ignore: must_be_immutable
class YouVimPlayer extends StatelessWidget {
  String provider,videoID;
  YouVimPlayer(this.provider,this.videoID);
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouVimPlayer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebviewScaffold(
        url: 'https://fluttervimeo.web.app/$provider,$videoID',
        javascriptChannels: jsChannels,
        mediaPlaybackRequiresUserGesture: false,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.white,
          child: const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
