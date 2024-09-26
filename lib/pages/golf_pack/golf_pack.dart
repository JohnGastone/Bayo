// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GolfPackPage extends StatefulWidget {
  const GolfPackPage({super.key});

  @override
  State<GolfPackPage> createState() => _GolfPackPageState();
}

class _GolfPackPageState extends State<GolfPackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Golf Pack",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
