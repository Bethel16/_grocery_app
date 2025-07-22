import 'package:flutter/material.dart';
import 'package:re_grocery_app/models/category.dart';

class SubCategory extends Category {
  SubCategory({
    required String name,
    required String icon,
    required Color color,
    required String imgName,
    List<Category> subCategories = const [],
  }) : super(
          name: name,
          icon: icon,
          color: color,
          imgName: imgName,
          subCategories: subCategories,
        );
}
