// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Image.asset(
                './assets/nike.png',
                height: 50,
                width: 200,
              ),
              Icon(CupertinoIcons.cart)
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Shop your kits here',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.sort_down_circle),
                    Image.asset(
                      './assets/real-madrid.png',
                      height: 50,
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      './assets/liverpool.png',
                      height: 50,
                      width: 150,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      './assets/barcelona.png',
                      height: 50,
                      width: 150,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
