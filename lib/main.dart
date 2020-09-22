import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey({int noteNumber, Color buttonColor}){
    return Expanded(
      child: FlatButton(
        onPressed:() {
          playSound(noteNumber);
        },
        color: buttonColor,
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
              buildKey(noteNumber: 1, buttonColor: Colors.red),
              buildKey(noteNumber: 2, buttonColor: Colors.orange),
              buildKey(noteNumber: 3, buttonColor: Colors.yellow),
              buildKey(noteNumber: 4, buttonColor: Colors.green),
              buildKey(noteNumber: 5, buttonColor: Colors.teal),
              buildKey(noteNumber: 6, buttonColor: Colors.blue),
              buildKey(noteNumber: 7, buttonColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
