import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:going/constants.dart';
import 'package:going/screens/welcome/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme:
            GoogleFonts.merriweatherTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
