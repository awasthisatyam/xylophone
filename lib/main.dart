import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(Color color, int number) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$number.wav');
        },
        child: Text('$number'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('xylophone-flutter'),
        ),
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(Colors.teal, 1),
                buildKey(Colors.indigo, 2),
                buildKey(Colors.blue, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.yellow, 5),
                buildKey(Colors.orange, 6),
                buildKey(Colors.red, 7),
                Expanded(
                  child: FlatButton(
                    color: Colors.purpleAccent,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('bird.wav');
                    },
                    child: Text('8'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
