import 'package:flutter/material.dart';
import 'package:planets_animetion_app/screens/details_page.dart';
import 'package:planets_animetion_app/screens/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(),
        "details_page": (context) => const DetailsPage(),
      },
    ),
  );
}

