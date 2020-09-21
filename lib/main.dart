import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  // TODO : Update method
  void buildKey(){
    Expanded(
      child: FlatButton(
        onPressed:() {
          playSound(1);
        },
        color: Colors.red,
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
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
              // buildKey(),
            ],
          ),
        ),
      ),
    );
  }
}
