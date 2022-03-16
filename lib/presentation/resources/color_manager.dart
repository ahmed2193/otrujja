import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#086654");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#7C908C");
    static Color titleColor2 = HexColor.fromHex("#05332B");

  static Color background = HexColor.fromHex("#04144096");
  static Color black = HexColor.fromHex("#1D2D3A");
  static Color black1 = HexColor.fromHex("#000000");
  static Color catColor1 = HexColor.fromHex("#EFF3FF");
  static Color catColor2 = HexColor.fromHex("#F6F8EA");
  static Color catColor3 = HexColor.fromHex("#FFF6ED");
  static Color catColor4 = HexColor.fromHex("#FFEDF4");
  static Color catColor5 = HexColor.fromHex("#E5F5FC");
  static Color catColor6 = HexColor.fromHex("#F5F6F7");
  static Color catColor = HexColor.fromHex("#F5F6F7");
  static Color headerColor = HexColor.fromHex("#2FB974");
  static Color headerColor1 = HexColor.fromHex("#FD6B65");
  static Color headerColor2 = HexColor.fromHex("#4691DA");
  static Color headerColor3 = HexColor.fromHex("#DAAC46");
  static Color titleColor = HexColor.fromHex("#DAAC46");
  static Color titleColor1 = HexColor.fromHex("#4691DA");
    static Color loadingColors = HexColor.fromHex("#f0f0f0");

  static Color loadingColor = HexColor.fromHex("#0A3F6C");

  static Color shadowColor = HexColor.fromHex("#DDE0E7");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");

  // new colors
  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color dividerColor = HexColor.fromHex("#21212114");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
