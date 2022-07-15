import 'package:flutter/material.dart';

import 'ui/home/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
       debugShowCheckedModeBanner: false,
      title: "Planets",
      home: HomePage(),
    ),
  );
}

