
import '../resources/app_responsive.dart';
import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    Key? key,
    required this.image,
    required this.icon,
  }) : super(key: key);

  final String image;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        // padding: const EdgeInsets.all(20),
        // 0.7
        // 80
        // 'الرئيسيه',
        // SvgPicture.asset(ImageAssets.menu),

        height: getheight(context: context, height: 0.9),
        width: getwidth(context: context, width: 1),
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: icon);
  }
}
