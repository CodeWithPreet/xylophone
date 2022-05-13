import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/HomeScreen.dart';
import 'app/ListenScreen.dart';
import 'app/PlayScreen.dart';

void main() {
  FlutterNativeSplash.removeAfter(initialization);
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      title: 'HomeScreen',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const HomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/play': (context) => PlayScreen(),
        'listen': (context) => const ListenScreen()
      },
    ),
  );
}

Future initialization(BuildContext? context) async {
  // await Future.delayed(const Duration(seconds: 2));
}
