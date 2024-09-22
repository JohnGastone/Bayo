// ignore_for_file: must_be_immutable

import 'package:bayo/model.dart'; // Ensure your CategoriesModel is correctly imported
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categoriescard extends StatelessWidget {
  Categoriescard({super.key});

  List<CategoriesModel> displayCategories =
      List.from(CategoriesModelList.displayCategories);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 212, 212, 186),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          height: 320,
          width: double.infinity,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.6,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: displayCategories.length,
            itemBuilder: (context, index) {
              return buildCategoryCard(displayCategories[index]);
            },
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(CategoriesModel product) {
    return Container(
      width: 160,
      height: 290,
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
                    product.brandPath ?? '',
                    height: 30,
                    width: 30,
                  ),
                ),
                const Align(
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
              product.imagePath ?? '',
              height: 174,
              width: 140,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${product.name} ",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        product.year ?? '',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.black,
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
                        "\$ ${product.price}",
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
                          onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}
