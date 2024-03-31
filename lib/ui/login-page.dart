// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mongo_dart/mongo_dart.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/main_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Positioned(top: 80, child: topPart()),
              Positioned(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: bottomPart(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget topPart() {
  return Column(
    children: [
      Padding(padding: EdgeInsets.only(top: 110, left: 20), child: topWords()),
    ],
  );
}

Widget topWords() {
  return SizedBox(
    child: Text(
      'Hello!',
      style: GoogleFonts.museoModerno(
          fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFFFFFFFF)),
    ),
  );
}

Widget bottomPart() {
  return SizedBox(
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/login_bg (1).png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(padding: EdgeInsets.all(15), child: bottomParts()),
        ],
      ),
    ),
  );
}

Widget bottomParts() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Log in your Account',
        style: GoogleFonts.rosario(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color(0xFF442614)),
      ),
      SizedBox(
        height: 500,
      )
    ],
  );
}
