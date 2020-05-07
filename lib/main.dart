import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone App',
      home: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  void playAudio(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(Color color,int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playAudio(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red,1),
            buildKey(Colors.orange,2),
            buildKey(Colors.yellow,3),
            buildKey(Colors.green,4),
            buildKey(Colors.teal,5),
            buildKey(Colors.blue,6),
            buildKey(Colors.purple,7),
          ],
        ),
      ),
    );
  }
}
