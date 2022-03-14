
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:
          const EdgeInsets.only(left: 10, right: 20.0, top: 20, bottom: 10),
      child: Text(
        title!,
        style: getBoldStyle(color: ColorManager.titleColor2, fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}