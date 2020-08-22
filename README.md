# flutter_youtube_vimeo

simple YouTube, Vimeo video player 

## Getting Started

For help getting started with Flutter, view our online documentation.

## iOS
In order for plugin to work correctly, you need to add new key to ios/Runner/Info.plist
```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
    <key>NSAllowsArbitraryLoadsInWebContent</key>
    <true/>
</dict>
```
NSAllowsArbitraryLoadsInWebContent is for iOS 10+ and NSAllowsArbitraryLoads for iOS 9.
## Android

Ensure the following permission is present in your Android Manifest file, located in <project root>/android/app/src/main/AndroidManifest.xml:
```
<uses-permission android:name="android.permission.INTERNET"/>
```

Works only in Android API 20 and above (From Android 5.0)

## How it works

You can directly apply Youtube,Vimeo Video ID

![Image of Yaktocat](https://tlgur.com/d/GZDM1j54) ![Image of Yaktocat](https://tlgur.com/d/GXMzmAlg)

## YouTube
```
MaterialApp(
      home: Scaffold(
        body: Container(
            child: YouVimPlayer('youtube','AGBjI0x9VbM')), //VideoID
      ),
    );
```
## Vimeo

```
MaterialApp(
      home: Scaffold(
        body: Container(
            child: YouVimPlayer('vimeo','447872160')), //VideoID
      ),
    );
```

