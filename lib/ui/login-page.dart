// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  image: AssetImage("images/main_bg.png"), fit: BoxFit.cover)),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Hello',
                style: GoogleFonts.museoModerno(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)),
              ),
              Text('Sign In!',
                  style: GoogleFonts.museoModerno(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF),
                  )),
              Positioned(child: top())
            ],
          ),
        ),
      ),
    );
  }
}

Widget top() {
  return SizedBox(
    width: double.infinity,
    child: Column(
      children: [
        Text(
            textAlign: TextAlign.start,
            '',
            style: GoogleFonts.museoModerno(
                color: Color(0xFFFFFFFF),
                fontSize: 40,
                fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
