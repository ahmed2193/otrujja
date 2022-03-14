import '../resources/app_responsive.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'back_arrow.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,required this.title,
    required this.image,
  }) : super(key: key);
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
   
            Text(
              title,
              style: getBoldStyle(color: ColorManager.titleColor2, fontSize: 16),
            ),
            SizedBox(
              width: getwidth(context: context, width:  0.071),
            ),
            Image.asset(
              image,
              fit: BoxFit.cover,
              // scale: 2,
            ),
          ],
        );
  }
}
