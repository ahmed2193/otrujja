import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'package:flutter/material.dart';

class Videobodydetals extends StatelessWidget {
  const Videobodydetals({Key? key, required this.title1, required this.title2})
      : super(key: key);
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title2,
                  style:
                      getRegularStyle(color: ColorManager.grey, fontSize: 15),
                ),
                Container(

                  width: 180,
                  padding:const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    
                    title1,
                    style: getRegularStyle(
                        color: ColorManager.titleColor1, fontSize: 15),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,

                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: ColorManager.dividerColor,
            thickness: 1,
          )
        ],
      ),
    );
  }
}
