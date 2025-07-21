import 'package:flutter/material.dart';
import 'package:re_grocery_app/helpers/appcolors.dart';
import 'package:re_grocery_app/helpers/iconhelper.dart';
import 'package:re_grocery_app/pages/categorylistpage.dart';
import 'package:re_grocery_app/widgets/iconfont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,

                child: Image.asset(
                  'assets/imgs/of_main_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        alignment: Alignment.center,
                        color: AppColors.MAIN_COLOR,
                        child: IconFonts(
                          iconName: IconFontHelper.MAIN_LOGO,
                          color: Colors.white,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Bienvenido',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Productos Frescos .\nSaludable. A Tiempo',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: AppColors.MAIN_COLOR,
                        padding: EdgeInsets.all(24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Text(
                        'Tratar Ahora!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                Container (
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child : ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                      highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CategoryListpage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Hacer Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.MAIN_COLOR,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          border: Border.all(
                            color: AppColors.MAIN_COLOR,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                  ),
)

                )
               ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
