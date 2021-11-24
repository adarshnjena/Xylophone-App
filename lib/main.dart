import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(soundNum) {
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Widget buildKey({Color color, int number}) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ),
          onPressed: () {
            playSound(number);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, number: 1),
              buildKey(color: Colors.orange, number: 2),
              buildKey(color: Colors.yellow, number: 3),
              buildKey(color: Colors.green, number: 4),
              buildKey(color: Colors.teal, number: 5),
              buildKey(color: Colors.blue, number: 6),
              buildKey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
