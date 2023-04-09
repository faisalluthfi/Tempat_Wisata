import 'package:flutter/material.dart';
import 'package:travelling/app/screens/ui/introduction-screen/onboard.dart';

class Constants {
  // Primary Color
  static var primaryColor = const Color(0xff1A3C40);
  static var secondaryColor = const Color(0xff767676);

  // static int convertPrimaryColor = int.parse(primaryColor);

  // onboarding Texts
  static var titleOne = "Hai Kotaku";
  static var descriptionOne =
      "Aplikasi ini cocok untuk anda yang sedang bingung memilih tempat wisata di Kota Tangerang";

  static var titleTwo = "Tempat Wisata";
  static var descriptionTwo =
      "Beberapa Tempat Wisata di Kota Tangerang yang akan dihadirkan pada Aplikasi ini";

  static var titleThree = "Yuk Jelajahi";
  static var descriptionThree =
      "Yuk kita lihat ada Wisata apa saja di Kota Tangerang";
}

class TextOnBoarding {
  final String title;
  final String description;
  final String image;

  TextOnBoarding(
      {required this.title, required this.description, required this.image});

  List<TextOnBoarding> forOnBoard = [
    TextOnBoarding(
      title: 'Hai Sobat Tangerang',
      description:
          "Aplikasi ini cocok untuk anda yang sedang bingung memilih tempat wisata di Kota Tangerang",
      image: 'assets/images/introduction-pict/logo-onboardingOne.png',
    ),
    TextOnBoarding(
      title: 'Tempat Wisata',
      description:
          "Beberapa Tempat Wisata di Kota Tangerang yang akan dihadirkan pada Aplikasi ini",
      image: 'assets/images/introduction-pict/logo-onboardingTwo.png',
    ),
    TextOnBoarding(
      title: 'Yuk Jelajahi',
      description: "Yuk kita lihat ada Wisata apa saja di Kota Tangerang",
      image: 'assets/images/introduction-pict/logo-onboardingThree.png',
    ),
  ];
}
