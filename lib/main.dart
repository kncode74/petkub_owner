import 'dart:math';
import 'package:back_end/dogIn.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:back_end/first.dart';
import 'package:back_end/home_page.dart';
import 'package:back_end/input_dog.dart';
import 'package:back_end/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme,
      )),
      home: inputDog(),
    );
  }
}
