import 'package:flutter/material.dart';
import 'package:funny_lenss/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Funyy Lens',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(bodyText1: GoogleFonts.poppins()),
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

