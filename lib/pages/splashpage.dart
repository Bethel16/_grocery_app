
import 'package:flutter/material.dart';
import 'package:re_grocery_app/helpers/appcolors.dart';
import 'package:re_grocery_app/helpers/iconhelper.dart';
import 'package:re_grocery_app/widgets/iconfont.dart';

class SplashPage extends StatelessWidget {
  final int duration;
  final Widget goToPage;
  SplashPage({required this.goToPage, this.duration = 0});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => this.goToPage),
      );
    });
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child: IconFonts(
          color: Colors.white,
          size: 100,
          iconName: IconFontHelper.MAIN_LOGO,
        ),
      ),
    );
  }
}
