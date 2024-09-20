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
