// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Itempage extends StatefulWidget {
  const Itempage({super.key});

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
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
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 143, 97, 107)),
                  child: Center(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 243, 119, 119)),
                            child: Image.asset(
                              './assets/nikelogo.png',
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          './assets/atletico-de-madrid.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Atletico de Madrid",
                          style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Image.asset(
                          './assets/at.png',
                          height: 330,
                          width: 300,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        ),
                        Text(
                          "220",
                          style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey),
                        )
                      ],
                    ),
                    Container(
                      width: 220,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "S",
                              style: GoogleFonts.poppins(
                                  color: Colors.white24,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "M",
                              style: GoogleFonts.poppins(
                                  color: Colors.white24,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.grey,
                              child: Text(
                                "L",
                                style: GoogleFonts.poppins(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white),
                              ),
                            ),
                            Text(
                              "XL",
                              style: GoogleFonts.poppins(
                                  color: Colors.white24,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            Text(
                              "XXL",
                              style: GoogleFonts.poppins(
                                  color: Colors.white24,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
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
