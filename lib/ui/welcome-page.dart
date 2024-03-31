// ignore: file_names
// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors

import 'package:fftm_project/ui/registration-page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './login-page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 320),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/main_bg.png"), fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
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
              SizedBox(height: 25),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LogIn()));
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Color(0xFF442614)),
                      padding:
                          EdgeInsets.symmetric(vertical: 19, horizontal: 124)),
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.rosario(
                        fontSize: 25, color: Color(0xFF442614)),
                  )),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff442614),
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 120)),
                  child: Text('Sign Up',
                      style: GoogleFonts.rosario(
                          fontSize: 25, color: Color(0xFFFFFFFF)))),
            ],
          ),
        ),
      ),
    );
  }
}
