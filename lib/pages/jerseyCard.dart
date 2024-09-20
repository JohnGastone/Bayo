// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JerseyCard extends StatefulWidget {
  final String teamName;
  final String season;
  final String logoPath;
  final String jerseyImagePath;
  final double price;
  final VoidCallback onAdd;
  final VoidCallback onTap;

  const JerseyCard({
    super.key,
    required this.teamName,
    required this.season,
    required this.logoPath,
    required this.jerseyImagePath,
    required this.price,
    required this.onAdd,
    required this.onTap,
  });

  @override
  _JerseyCardState createState() => _JerseyCardState();
}

class _JerseyCardState extends State<JerseyCard> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            bottomRight: Radius.circular(15),
          ),
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
                      widget.logoPath,
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: toggleFavorite, // Toggle heart on tap
                      child: Icon(
                        isFavorite
                            ? CupertinoIcons
                                .heart_fill // Filled heart when favorite
                            : CupertinoIcons
                                .heart, // Default heart when not favorite
                        color: isFavorite
                            ? Colors.red
                            : Colors.white, // Red if favorite, white if not
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: InkWell(
                onTap: widget.onTap,
                child: Image.asset(
                  widget.jerseyImagePath,
                  height: 174,
                  width: 140,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "${widget.teamName} ",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: " | ",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: widget.season,
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${widget.price}",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 50,
                        child: FloatingActionButton(
                          backgroundColor: Colors.black,
                          onPressed: widget.onAdd,
                          child: Text(
                            "Add",
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
