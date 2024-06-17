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
                'Shop your kits club kit here',
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
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      './assets/real-madrid.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      './assets/liverpool.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      './assets/barcelona.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      './assets/atletico-de-madrid.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Image.asset(
                      './assets/bayern-munchen.png',
                      height: 45,
                      width: 45,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 100,
                        height: 15,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey,
                          value: 0.42, // Value should be between 0.0 and 1.0
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 160,
                      height: 275,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(57, 74, 81, 61),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset(
                                    './assets/atletico-de-madrid.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              './assets/at.png',
                              height: 174,
                              width: 140,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: "Atletico ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.white),
                                ),
                                TextSpan(
                                  text: " | ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "2013/14",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.white),
                                )
                              ])),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$ 200",
                                        style: GoogleFonts.poppins(
                                            fontSize: 25, color: Colors.white)),
                                    SizedBox(
                                      height: 30,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.black,
                                        onPressed: () {},
                                        child: Text(
                                          "Add",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 160,
                      height: 275,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(57, 74, 81, 61),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8, right: 8, top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset(
                                    './assets/barcelona.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              './assets/barca23.png',
                              height: 174,
                              width: 140,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: "Barca",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.white),
                                ),
                                TextSpan(
                                  text: " | ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "2023/24",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.white),
                                )
                              ])),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$ 250",
                                        style: GoogleFonts.poppins(
                                            fontSize: 25, color: Colors.white)),
                                    SizedBox(
                                      height: 30,
                                      width: 50,
                                      child: FloatingActionButton(
                                        backgroundColor: Colors.black,
                                        onPressed: () {},
                                        child: Text(
                                          "Add",
                                          style: GoogleFonts.poppins(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
