// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportsAccessoriesPage extends StatefulWidget {
  const SportsAccessoriesPage({super.key});

  @override
  State<SportsAccessoriesPage> createState() => _SportsAccessoriesPageState();
}

class _SportsAccessoriesPageState extends State<SportsAccessoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sports Accessories",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
