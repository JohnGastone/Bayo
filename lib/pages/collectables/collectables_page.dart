// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectablesPage extends StatefulWidget {
  const CollectablesPage({super.key});

  @override
  State<CollectablesPage> createState() => _CollectablesPageState();
}

class _CollectablesPageState extends State<CollectablesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Collectables",
          style: GoogleFonts.poppins(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(),
    );
  }
}
