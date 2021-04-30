import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void play(numnote) {
    final player = AudioCache();
    player.play('note$numnote.wav');
  }

  Expanded action({color, int soundnum}) {
    return Expanded(
      child: FlatButton(
          child: Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Divider(
                  color: Colors.blueGrey,
                ),
                Container(
                  color: Colors.black,
                  height: 40.0,
                  width: 150.0,
                )
              ],
            ),
          ),
          color: color,
          onPressed: () {
            play(soundnum);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            action(color: Colors.white, soundnum: 1),
            action(color: Colors.white, soundnum: 2),
            action(color: Colors.white, soundnum: 3),
            action(color: Colors.white, soundnum: 4),
            action(color: Colors.white, soundnum: 5),
            action(color: Colors.white, soundnum: 6),
            action(color: Colors.white, soundnum: 7),
          ]),
        ),
      ),
    );
  }
}
