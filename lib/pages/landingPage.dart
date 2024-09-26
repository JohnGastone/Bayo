// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bayo/components/home_header.dart';
import 'package:bayo/pages/category/categoriesCard.dart';
import 'package:bayo/pages/clubShop.dart';
import 'package:bayo/model.dart';
import 'package:bayo/pages/detailsPage.dart';
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
  Color inActiveIconColor = Color(0xFFB6B6B6);

  List<ClubLogoModel> displayClubLogos =
      List.from(ClubLogoModelList.displayLogos);
  List<PopularItemsModel> displayPopularItems =
      List.from(PopularItemsModelList.displayPopularItems);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 212, 212, 186),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(245, 212, 212, 186),
          automaticallyImplyLeading: false,
          title: HomeHeader()),
      body: Center(
        child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Shop your favorite football club item here',
            style:
                GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500),
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
                  "Popular Products",
                  style: GoogleFonts.poppins(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 15,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      value: 0.42,
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
                itemCount: displayPopularItems.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final jersey = displayPopularItems[index];
                  return JerseyCard(
                    popularItem: jersey,
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => ProductDetailsScreen()));
                    },
                    onAdd: () {},
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
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 100,
                    height: 15,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
              height: 320, width: double.infinity, child: CategoriesCard()),
        ])),
      ),
    );
  }
}
