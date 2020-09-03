import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MusicOn());
}

class MusicOn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Color> colours = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blueAccent,
    Colors.purple
  ];
  List<String> st = [
    'note1.wav',
    'note2.wav',
    'note3.wav',
    'note4.wav',
    'note5.wav',
    'note6.wav',
    'note7.wav'
  ];
  Expanded playSounds(Color colors, String note) {
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: colors,
        onPressed: () {
          final player = AudioCache();
          player.play(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            playSounds(colours[0], st[0]),
            playSounds(colours[1], st[1]),
            playSounds(colours[2], st[2]),
            playSounds(colours[3], st[3]),
            playSounds(colours[4], st[4]),
            playSounds(colours[5], st[5]),
            playSounds(colours[6], st[6]),
          ],
        )),
      ),
    );
  }
}
/*
FlatButton(

        ),
 */
