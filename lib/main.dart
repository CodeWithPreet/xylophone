import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  // await Future.delayed(const Duration(seconds: 2));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playSound(int soundnum) {
    final player = AudioCache();
    player.play("note${soundnum}.wav");
  }

  Expanded buildkey({required Color color, required soundnum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundnum);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            // height: 500,
            child: Column(
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
                buildkey(color: Colors.red, soundnum: 1),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.orange,
                //     onPressed: () {
                //       playSound(2);
                //     },
                //     child: Text(""),
                //   ),
                // ),
                buildkey(color: Colors.orange, soundnum: 2),

                // Expanded(
                //   child: FlatButton(
                //     onPressed: () {
                //       playSound(3);
                //     },
                //     color: Colors.yellow,
                //     child: Text(""),
                //   ),
                // ),
                buildkey(color: Colors.yellow, soundnum: 3),

                // Expanded(
                //   child: FlatButton(
                //     onPressed: () {
                //       playSound(4);
                //     },
                //     color: Colors.green,
                //     child: Text(""),
                //   ),
                // ),
                buildkey(color: Colors.green, soundnum: 4),

                // Expanded(
                //   child: FlatButton(
                //     onPressed: () {
                //       playSound(5);
                //     },
                //     color: Colors.teal,
                //     child: Text(""),
                //   ),
                // ),
                buildkey(color: Colors.teal, soundnum: 5),

                // Expanded(
                //   child: FlatButton(
                //       onPressed: () {
                //         playSound(6);
                //       },
                //       color: Colors.blue,
                //       child: Text("")),
                // ),
                buildkey(color: Colors.blue, soundnum: 6),

                // Expanded(
                //   child: FlatButton(
                //     onPressed: () {
                //       playSound(7);
                //     },
                //     color: Colors.purple,
                //     child: Text(""),
                //   ),
                // ),
                buildkey(color: Colors.purple, soundnum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
