import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  PlayScreen({Key? key}) : super(key: key);
  final player = AudioCache();
  AudioPlayer? audioController;
  void playSound(int soundNum) async {
    if (audioController != null) audioController?.pause();
    audioController = await player.play("note$soundNum.mp3");
    if (audioController != null) print(audioController?.playerId);
  }

  Expanded buildKey({required Color color, required soundNum}) {
    return Expanded(
      child: Card(
        color: color,
        // borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        // elevation: 20.0,
        child: GestureDetector(
          onTap: () {
            playSound(soundNum);
          },
        ),
        // child: FlatButton(
        //   color: color,
        //   onPressed: () {
        //     playSound(soundnum);
        //   },
        //   child: Text(""),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white60,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.red,
              //     onPressed: () {
              //       playSound(1);
              //     },
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.red, soundNum: 8),
              // Expanded(
              //   child: FlatButton(
              //     color: Colors.orange,
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.orange, soundNum: 2),

              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     color: Colors.yellow,
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.yellow, soundNum: 3),

              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     color: Colors.green,
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.green, soundNum: 4),

              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     color: Colors.teal,
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.teal, soundNum: 5),

              // Expanded(
              //   child: FlatButton(
              //       onPressed: () {
              //         playSound(6);
              //       },
              //       color: Colors.blue,
              //       child: Text("")),
              // ),
              buildKey(color: Colors.blue, soundNum: 6),

              // Expanded(
              //   child: FlatButton(
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     color: Colors.purple,
              //     child: Text(""),
              //   ),
              // ),
              buildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
