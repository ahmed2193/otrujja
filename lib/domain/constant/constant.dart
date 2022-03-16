import 'package:flutter/material.dart';
import 'package:otrujja/presentation/resources/color_manager.dart';
import 'package:otrujja/presentation/resources/styles_manager.dart';

TextFormField textformfield(
    {required context,
    required String name,
    required keyboardType,
    required textInputAction,
    required TextEditingController,
    required String validator,
    IconData? suffix,
    IconData? prefixIcon,
    dynamic? suffixPressed,
    bool isPassword = false,
    int line = 1,
    dynamic? onsubmitted}) {
  return TextFormField(
    keyboardType: keyboardType,
    controller: TextEditingController,
    onFieldSubmitted: onsubmitted,
    validator: (String? value) {
      if (value!.isEmpty) {
        return validator;
      }
    },
    obscureText: isPassword,

    // scrollPadding: EdgeInsets.only(right: 20),
    textInputAction: textInputAction,
    decoration: InputDecoration(
      contentPadding:const EdgeInsets.symmetric(vertical: 17, horizontal: 16),

      enabled: true,
      hintText: name,
      // hintStyle: TextStyles.textstyleMedium,
      suffixIcon: suffix != null
          ? IconButton(
              onPressed: suffixPressed!,
              icon: Icon(
                suffix,
              ),
            )
          : null,

      prefixIcon: Icon(prefixIcon!, ),
      prefixIconColor: ColorManager.primary,

      filled: true,
      fillColor:ColorManager.white,
      focusColor: Colors.black,
      // hoverColor: Colors.blue.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: ColorManager.grey,
          width: 1.5,
        ),
      ),

      hoverColor: ColorManager.primary,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),

        borderSide: BorderSide(
          color: ColorManager.primary,
          width: 2.0,
        ),
      ),
    ),
    maxLines: line,
  );
}

// import 'package:flutter/material.dart';

// import '../../presentation/resources/assets_manager.dart';
// import '../../presentation/resources/color_manager.dart';

// class Description {
//   final String title1;
//   final String title2;
//   Description({required this.title1, required this.title2});
// }


//   List<Color> catColor = [
//     ColorManager.catColor,
//     ColorManager.catColor1,
//     ColorManager.catColor2,
//     ColorManager.catColor3,
//     ColorManager.catColor4,
//     ColorManager.catColor5,
//     ColorManager.catColor6,
//   ];
//   List<String> catImage = [
//     ImageAssets.cat1,
//     ImageAssets.cat2,
//     ImageAssets.cat3,
//     ImageAssets.cat4,
//     ImageAssets.cat5,
//     ImageAssets.cat6,
//     ImageAssets.cat7,
//   ];

// class CatData {
//   final String title;
//   final String image;
//   final dynamic ontaap;
//   CatData({required this.ontaap, required this.image, required this.title});
// }