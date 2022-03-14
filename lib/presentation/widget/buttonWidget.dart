
import '../resources/app_responsive.dart';
import '../resources/styles_manager.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.title = '',
    this.ontap,
    required this.icon,
    required this.width,
    required this.colorBorder,
    required this.boxColor,
    required this.textColor,
  }) : super(key: key);
  final String title;
  final Widget icon;
  final double width;
  final Color colorBorder;
  final Color boxColor;
  final Color textColor;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return
     GestureDetector(
      onTap: ontap,
      child: Container(
        alignment: Alignment.center,
        height: getheight(context: context, height: .12),
        width: width,
        decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(color: colorBorder, width: 1),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: getRegularStyle(color: textColor, fontSize: 18),
            ),
           const SizedBox(
              width: 15,
            ),
            icon
          ],
        ),
      ),
    );
  }
}


