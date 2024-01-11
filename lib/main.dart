import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/src/audio_cache.dart';


void main() {
  runApp(xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});

  void playmusic(int musicno) {
    final player = AudioPlayer();
    player.play(AssetSource('note$musicno.wav'));
  }

  Expanded buildKey({Color? Color, musicno}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Color),
        onPressed: () {
          playmusic(musicno);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Color: Colors.purple, musicno: 1),
              buildKey(Color: Colors.indigo, musicno: 2),
              buildKey(Color: Colors.blue, musicno: 3),
              buildKey(Color: Colors.green, musicno: 4),
              buildKey(Color: Colors.orange, musicno: 5),
              buildKey(Color: Colors.yellow, musicno: 6),
              buildKey(Color: Colors.red, musicno: 7),
            ],
          ),
        ),
      ),
    );
  }
}