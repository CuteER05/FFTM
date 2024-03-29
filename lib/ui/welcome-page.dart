// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 330),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/main_bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: [
              Text('Feel the Music',
                  style: GoogleFonts.museoModerno(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF442614)),
                  textAlign: TextAlign.center),
              SizedBox(height: 50),
              Text('WELCOME!',
                  style: GoogleFonts.rosario(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF442614)),
                  textAlign: TextAlign.center),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
