// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bayo/pages/category/categoriesCard.dart';
import 'package:bayo/pages/clubShop.dart';
import 'package:bayo/model.dart';
import 'package:bayo/pages/detailsPage.dart';
import 'package:bayo/pages/favoriteItems.dart';
import 'package:bayo/pages/jerseyCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<ClubLogoModel> displayClubLogos =
      List.from(ClubLogoModelList.displayLogos);
  final List<Map<String, dynamic>> jerseys = [
    {
      'teamName': 'Atletico',
      'season': '2013',
      'logoPath': './assets/atletico-de-madrid.png',
      'jerseyImagePath': './assets/at.png',
      'price': 50.0,
    },
    {
      'teamName': 'Barca',
      'season': '2023',
      'logoPath': './assets/barcelona.png',
      'jerseyImagePath': './assets/barca23.png',
      'price': 55.0,
    },
    {
      'teamName': 'Liverpool',
      'season': '2019',
      'logoPath': './assets/lfc.png',
      'jerseyImagePath': './assets/liv19.png',
      'price': 60.0,
    },
    {
      'teamName': 'Dortmund',
      'season': '2020',
      'logoPath': './assets/bvblogo.png',
      'jerseyImagePath': './assets/bvb.png',
      'price': 45.0,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 212, 212, 186),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(245, 212, 212, 186),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Icon(CupertinoIcons.heart_fill),
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => FavoriteItems()));
                },
              ),
              InkWell(
                child: Icon(CupertinoIcons.cart),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Clubshop()));
                },
              )
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
                'Shop your favorite football club item here',
                style: GoogleFonts.poppins(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: displayClubLogos.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 18),
                        child: InkWell(
                          child: SizedBox(
                            height: displayClubLogos[index].height,
                            width: displayClubLogos[index].width,
                            child: displayClubLogos[index].logoPath,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Clubshop()));
                          },
                        ),
                      );
                    },
                  ),
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 320,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: jerseys.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final jersey = jerseys[index];
                      return JerseyCard(
                        teamName: jersey['teamName'],
                        season: jersey['season'],
                        logoPath: jersey['logoPath'],
                        jerseyImagePath: jersey['jerseyImagePath'],
                        price: jersey['price'],
                        onAdd: () {
                          // Handle Add to cart action
                        },
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen()),
                          );
                        },
                      );
                    },
                  ),
                ),
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
                            value: 0.42,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blueGrey)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: 400, width: double.infinity, child: Categoriescard())
            ],
          ),
        ),
      ),
    );
  }
}
