import '../resources/app_responsive.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularCat extends StatelessWidget {
  PopularCat(
      {Key? key,
      required this.icon,
      required this.icon1,
      required this.title,
      required this.image,
      required this.subTitle,
     required this.ontap,
      })
      : super(key: key);

  Widget icon;
  Widget icon1;
  String title;
  String image;
  String subTitle;
  dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 15),
        height: getheight(context: context, height: 0.4),
        width: getwidth(context: context, width: 1),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: ColorManager.grey,
                blurRadius: 5.0, // soften the shadow
                offset:const Offset(
                  1.0, // Move to right 10  horizontally
                  3.0, // Move to bottom 10 Vertically
                ),
              )
            ],
            color: ColorManager.white,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: 
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(alignment: Alignment.topLeft, child: icon),
           const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // SizedBox(height: 40,),
                SizedBox(
                  width: 100,
                  child: Text(
                    title,
                    style: getRegularStyle(
                        color: ColorManager.black, fontSize: 15),
                    textAlign: TextAlign.end,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      subTitle,
                      style: getRegularStyle(
                          color: ColorManager.grey, fontSize: 14),
                      textAlign: TextAlign.end,
                    ),
                   const SizedBox(
                      width: 10,
                    ),
                   const Icon(Icons.person),
                  ],
                ),
              ],
            ),
          const  SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: ontap,
              child: Container(
                  alignment: Alignment.center,
                  height: getheight(
                    context: context,
                    height: 0.38,
                  ),
                  width: getwidth(context: context, width: 0.3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        
                        image: NetworkImage(image,
                        ),
                        
                        fit: BoxFit.cover,
                      )),
                  child: icon1),
            ),
          ],
        ));
 
 
  }
}
