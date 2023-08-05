import 'package:flutter/material.dart';

class GlobalVariables {
  // static const baseUrl = 'http://103.150.93.77:1339';
  // static const baseUrl = 'http://localhost:1337';
  static const baseUrl = 'http://103.150.190.45:1337';
  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/images/fashion.jpeg',
    },
  ];

  static const List<String> bannerImages = [
    'https://storage.googleapis.com/astro-site/home/new-user.webp',
    'https://storage.googleapis.com/astro-site/home/24jam.webp',
  ];

  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = const Color(0xffEE4D2D);
  static const unselectedNavBarColor = Colors.black87;
}
