import 'package:flutter/material.dart';

class IconFonts extends StatelessWidget {
  final Color color;
  final double size;
  final String iconName;
  const IconFonts({
    Key? key,
    required this.color,
    required this.size,
    required this.iconName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.iconName,
      style: TextStyle(
        color: this.color,
        fontSize: this.size,
        fontFamily: 'orilla'
      ),
    );
  }
}
