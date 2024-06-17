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
                'Shop your favorite football item here',
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
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.blueGrey),
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
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
                                    Text("\$ 400",
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
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
                                    Text("\$ 550",
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
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
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
                                    './assets/liverpool.png',
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
                              './assets/liv19.png',
                              height: 174,
                              width: 140,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: "Liverpool",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.white),
                                ),
                                TextSpan(
                                  text: " | ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "2019/20",
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
                                    Text("\$ 600",
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
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 165,
                      height: 275,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(57, 74, 81, 61),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(120),
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
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
                                    './assets/bvblogo.png',
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
                              './assets/bvb.png',
                              height: 174,
                              width: 140,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text.rich(TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: "Dortmund",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19, color: Colors.white),
                                ),
                                TextSpan(
                                  text: " | ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20, color: Colors.black),
                                ),
                                TextSpan(
                                  text: "2020/21",
                                  style: GoogleFonts.poppins(
                                      fontSize: 19, color: Colors.white),
                                )
                              ])),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$ 450",
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
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
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
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blueGrey)),
                      ),
                    ),
                  ],
                ),
              ),
              Row(children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 160,
                    height: 275,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(57, 74, 81, 61),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
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
                                  './assets/nike.png',
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
                            './assets/boots.png',
                            height: 174,
                            width: 140,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Nike mercurial ",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.white),
                              ),
                              TextSpan(
                                text: "2019",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.black),
                              )
                            ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 650",
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
                                            fontSize: 15, color: Colors.white),
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
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
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
                                  './assets/adidas.png',
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
                            './assets/adiball.png',
                            height: 174,
                            width: 140,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text.rich(TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "Adidas Ball  ",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.white),
                              ),
                              TextSpan(
                                text: "  2014",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, color: Colors.black),
                              )
                            ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$ 300",
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
                                            fontSize: 15, color: Colors.white),
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
              ])
            ],
          ),
        ),
      ),
    );
  }
}
