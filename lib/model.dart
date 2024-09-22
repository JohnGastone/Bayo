import 'package:flutter/cupertino.dart';

class ClubLogoModel {
  Image? logoPath;
  double? height;
  double? width;

  ClubLogoModel({
    this.logoPath,
    this.height,
    this.width,
  });
}

class ClubLogoModelList {
  static List<ClubLogoModel> getLogos = [
    ClubLogoModel(
        logoPath: Image.asset('assets/real-madrid.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/lfc.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/barcelona.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/atletico-de-madrid.png'),
        height: 45,
        width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/bavarians.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('assets/arsenal.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/mnu.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/chelsea.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/juve.png'), height: 45, width: 45),
    ClubLogoModel(
        logoPath: Image.asset('./assets/ajax.png'), height: 45, width: 45),
  ];
  static List<ClubLogoModel> displayLogos =
      List.from(ClubLogoModelList.getLogos);
}

class CategoriesModel {
  String? name;
  String? year;
  int? price;
  String? imagePath;
  String? brandPath;

  CategoriesModel({
    this.name,
    this.year,
    this.price,
    this.imagePath,
    this.brandPath,
  });
}

class CategoriesModelList {
  static List<CategoriesModel> getCategories = [
    CategoriesModel(
      name: 'Nike Boots',
      year: '2019',
      price: 650,
      imagePath: './assets/boots.png',
      brandPath: './assets/nike.png',
    ),
    CategoriesModel(
      name: 'Match Ball',
      year: '2014',
      price: 300,
      imagePath: './assets/adiball.png',
      brandPath: './assets/adidas.png',
    ),
    CategoriesModel(
      name: 'Puma Backpack',
      year: '2019',
      price: 150,
      imagePath: './assets/backpack.png',
      brandPath: './assets/puma.png',
    ),
    CategoriesModel(
      name: 'PSG Cap',
      year: '2022',
      price: 80,
      imagePath: './assets/psgcap.png',
      brandPath: './assets/psg.png',
    ),
  ];

  static List<CategoriesModel> displayCategories =
      List.from(CategoriesModelList.getCategories);
}

class PopularItemsModel {
  String? name;
  String? year;
  int? price;
  String? imagePath;
  String? brandPath;

  PopularItemsModel({
    this.name,
    this.year,
    this.price,
    this.imagePath,
    this.brandPath,
  });
}

class PopularItemsModelList {
  static List<PopularItemsModel> getCategories = [
    PopularItemsModel(
      name: 'Nike Boots',
      year: '2019',
      price: 650,
      imagePath: './assets/boots.png',
      brandPath: './assets/nike.png',
    ),
    PopularItemsModel(
      name: 'Match Ball',
      year: '2014',
      price: 300,
      imagePath: './assets/adiball.png',
      brandPath: './assets/adidas.png',
    ),
    PopularItemsModel(
      name: 'Puma Backpack',
      year: '2019',
      price: 150,
      imagePath: './assets/backpack.png',
      brandPath: './assets/puma.png',
    ),
    PopularItemsModel(
      name: 'PSG Cap',
      year: '2022',
      price: 80,
      imagePath: './assets/psgcap.png',
      brandPath: './assets/psg.png',
    ),
  ];

  static List<PopularItemsModel> displayCategories =
      List.from(PopularItemsModelList.getCategories);
}
