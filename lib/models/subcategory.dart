import 'package:re_grocery_app/models/category.dart';
import 'package:flutter/material.dart';

class SubCategory extends Category { 
  SubCategory({
    required String name,
    required String icon,
    required Color color,
    required String imgName,
  }) : super(name: name , icon: icon, color: color, imgName: imgName);
}