// ignore_for_file: library_private_types_in_public_api

import 'package:bayo/constants.dart';
import 'package:bayo/model.dart'; // Make sure PopularItemsModel is imported
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JerseyCard extends StatefulWidget {
  final PopularItemsModel popularItem;
  final Function()? onTap;
  final Function()? onAdd;

  const JerseyCard(
      {super.key, required this.popularItem, this.onTap, this.onAdd});

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
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 160,
        height: 275,
        decoration: const BoxDecoration(
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
              padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      widget.popularItem.brandPath ?? '', // Access brand image
                      height: 30,
                      width: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: toggleFavorite,
                      child: Icon(
                        isFavorite
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isFavorite ? kPrimaryColor : Colors.white,
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
                  widget.popularItem.imagePath ?? '',
                  height: 174,
                  width: 140,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.popularItem.teamName} ",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " | ",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        " ${widget.popularItem.year}",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${widget.popularItem.price}",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
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
