import 'package:flutter/material.dart';
import 'package:re_grocery_app/models/category.dart';
import 'package:re_grocery_app/widgets/categoryicon.dart';

class  Selectedcategorypage  extends StatelessWidget{
  Category selectedCategory;
  Selectedcategorypage({required this.selectedCategory});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory.color,
                  iconName: this.selectedCategory.icon,
                ),
                Text(this.selectedCategory.name,
                style: TextStyle(color : this.selectedCategory.color,fontSize: 20),)
              ],
            )
          ],
        ),
      ),
    );
  }
}