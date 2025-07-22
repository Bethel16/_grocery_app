import 'package:flutter/material.dart';
import 'package:re_grocery_app/helpers/appcolors.dart';
import 'package:re_grocery_app/helpers/iconhelper.dart';
import 'package:re_grocery_app/models/category.dart';
import 'package:re_grocery_app/widgets/categoryicon.dart';
import 'package:re_grocery_app/widgets/iconfont.dart';

class  Selectedcategorypage  extends StatelessWidget{
  Category selectedCategory;
  Selectedcategorypage({required this.selectedCategory});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: this.selectedCategory.color,
                  iconName: this.selectedCategory.icon,
                ),
                SizedBox(width: 10,),
                Text(this.selectedCategory.name,
                style: TextStyle(color : this.selectedCategory.color,fontSize: 20),)
              ],
            ),
            SizedBox(height: 20,),
            Expanded(child: GridView.count(crossAxisCount: 2,
            children : List.generate(this.selectedCategory.subCategories.length , (index) {
              return GestureDetector(
                onTap: () => {
                  // navigate to details page
                },
                child:  Container(
                child: Column(
                  children: [
                    ClipOval(
                      child:  Image.asset('assets/imgs/${this.selectedCategory.subCategories[index].imgName}.png',
                    fit: BoxFit.cover,width: 100 , height: 100,),
              
                    ),
                    SizedBox(height: 10,),
                    Text(this.selectedCategory.subCategories[index].name,
                    style: TextStyle(color : this.selectedCategory.color,fontSize: 20),)
                   ],
                ),
              )
              );
           }),
            ),)
          ],
        ),
      ),
    );
  }
}