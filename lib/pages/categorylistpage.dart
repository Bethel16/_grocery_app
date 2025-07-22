import 'package:flutter/material.dart';
import 'package:re_grocery_app/helpers/appcolors.dart';
import 'package:re_grocery_app/helpers/iconhelper.dart';
import 'package:re_grocery_app/helpers/utils.dart';
import 'package:re_grocery_app/models/category.dart';
import 'package:re_grocery_app/pages/selectedCategorypage.dart';
import 'package:re_grocery_app/widgets/categorybottombar.dart';
import 'package:re_grocery_app/widgets/categorycard.dart';
import 'package:re_grocery_app/widgets/categoryicon.dart';
import 'package:re_grocery_app/widgets/iconfont.dart';

class CategoryListpage extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: 
      AppBar(
        title: IconFonts(
          iconName: IconFontHelper.LOGO,
          color: AppColors.MAIN_COLOR,
          size: 40,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: AppColors.MAIN_COLOR),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset(
                'assets/imgs/me.jpg',
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),

      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    "Select from categories",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 120),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(category: categories[index] ,onCardClick: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Selectedcategorypage(selectedCategory:categories[index] ,)));
                      });
                    
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Categorybottombar()
           ),
          ],
        ),
      ),
    );
  }
}
