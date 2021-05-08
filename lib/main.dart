import 'package:coffee/globals.dart';
import 'package:coffee/pages/CartPage.dart';
import 'package:coffee/pages/DetailsPage.dart';
import 'package:coffee/pages/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets Brew',
      theme: ThemeData(
        primaryColor: kDarkBlue,
        accentColor: kOrange.withOpacity(0.5),
      ),
      routes: {
        '': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
        '/cart': (_) => CartPage()
      },
      home: HomePage(),
    );
  }
}
