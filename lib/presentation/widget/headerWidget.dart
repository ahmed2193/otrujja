import '../resources/app_responsive.dart';
import '../resources/color_manager.dart';
import '../resources/styles_manager.dart';
import 'slide_page_transitions.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
    this.title = 'الرئيسيه',
    this.icon = const SizedBox(width: 40,),
    this.height = 0.7,
    this.borderRadius = 80,
  }) : super(key: key);

  final String title;

  final Widget icon;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final EajazTextControler = TextEditingController();

    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      // 0.7
      // 80
      // 'الرئيسيه',
      // SvgPicture.asset(ImageAssets.menu),

      height: getheight(context: context, height: height),
      width: getwidth(context: context, width: 1),
      decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadius),
            bottomRight: Radius.circular(borderRadius),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Text(
                  title,
                  style:
                      getRegularStyle(color: ColorManager.white, fontSize: 23),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: getwidth(context: context, width: .25),
              ),
              icon
            ],
          ),
          SizedBox(
            height: getheight(context: context, height: 0.05),
          ),
         GestureDetector(
            child: Container(
              height: getheight(context: context, height: 0.13),
              margin:const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  border: Border.all(
                    color:const Color(0xffF9F9F9),
                    width: 2.0,
                  ),
                  color: ColorManager.white,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
          
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Icon(
                    Icons.search,
                    color: ColorManager.grey,
                    size: 30,
                  ),Text(
                    'بحث',
                    style:
                        getRegularStyle(color: ColorManager.grey, fontSize: 25),
                  ),
          
                ],
              ),
            ),
          ),
 
          // textformfield(
          //     keyboardType: TextInputType.text,
          //     name: 'بحث',
          //     TextEditingController: EajazTextControler,
          //     textInputAction: TextInputAction.done,
          //     validator: 'برجاء ادخال النص')
        ],
      ),
    );
  }

  TextFormField textformfield({
    required String name,
    // required String imageName,
    required keyboardType,
    required textInputAction,
    required TextEditingController,
    required String validator,
    int line = 1,
  }) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: TextEditingController,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validator;
        }
      },
      // scrollPadding: EdgeInsets.only(right: 20),
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),

        enabled: true,
        hintText: name,
        hintStyle: getRegularStyle(color: ColorManager.grey, fontSize: 20),

        prefixIcon: Icon(
          Icons.search,
          color: ColorManager.grey,
          size: 30,
        ),

        filled: true,
        fillColor: const Color(0xffEEEEEE),
        focusColor: Colors.black,
        // hoverColor: Colors.blue.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xffF9F9F9),
            width: 2.0,
          ),
        ),

        hoverColor: ColorManager.titleColor2,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: ColorManager.titleColor2,
            width: 1.0,
          ),
        ),
      ),
      maxLines: line,
    );
  }
}
