// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicAccessoriesPage extends StatefulWidget {
  const MusicAccessoriesPage({super.key});

  @override
  State<MusicAccessoriesPage> createState() => _MusicAccessoriesPageState();
}

class _MusicAccessoriesPageState extends State<MusicAccessoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Music Accessories",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
