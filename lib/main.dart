import 'package:flutter/material.dart';
import 'package:re_grocery_app/helpers/utils.dart';
import 'package:re_grocery_app/pages/categorylistpage.dart';
import 'package:re_grocery_app/pages/selectedCategorypage.dart';
import 'package:re_grocery_app/pages/splashpage.dart';
import 'package:re_grocery_app/pages/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme : ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home : Selectedcategorypage(
        selectedCategory: Utils.getMockedCategories()[0],
      ),
      // home: SplashPage(goToPage: WelcomePage(), duration: 3),
    ),
  );
}

