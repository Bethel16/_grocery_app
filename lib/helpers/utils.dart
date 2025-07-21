import 'package:re_grocery_app/helpers/appcolors.dart';
import 'package:re_grocery_app/helpers/iconhelper.dart';

import 'package:re_grocery_app/models/category.dart';
import 'package:re_grocery_app/models/subcategory.dart';

class Utils{
  static List<Category> getMockedCategories(){
    return [
      Category(
        name: 'Carnes',
        icon: IconFontHelper.MEATS,
        color: AppColors.MEATS,
        imgName: "cat1",
        subCategories: [
          SubCategory(name: 'Cerdo', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_1"),
                    SubCategory(name: 'Cerdo', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_1"),

          SubCategory(name: 'Vaca', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_2"),

          SubCategory(name: 'Gallina', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_3"),

          SubCategory(name: 'Pova', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_4"),

          SubCategory(name: 'Chivo', icon: IconFontHelper.MEATS, color: AppColors.MEATS, imgName: "cat1_5"),

        ]
      ),
        Category(
        name: 'Frutas',
        icon: IconFontHelper.FRUITS,
        color: AppColors.FRUITS,
        imgName: "cat2",
        subCategories: []
      ),  Category(
        name: 'Vegetais',
        icon: IconFontHelper.VEGS,
        color: AppColors.VEGS,
        imgName: "cat3",
        subCategories: []
      ),  Category(
        name: 'Semillas',
        icon: IconFontHelper.SEEDS,
        color: AppColors.SEEDS,
        imgName: "cat4",
        subCategories: []
      ),  Category(
        name: 'Dulces',
        icon: IconFontHelper.PASTRIES,
        color: AppColors.PASTRIES,
        imgName: "cat1",
        subCategories: []
      ),  Category(
        name: 'Espices',
        icon: IconFontHelper.SPICES,
        color: AppColors.SPICES,
        imgName: "cat6",
        subCategories: []
      ), 
    ];
  }
}