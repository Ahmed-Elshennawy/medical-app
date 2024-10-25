import 'package:flutter/material.dart';
import 'package:medical/consts/consts.dart';

class AppFonts {
  static String sans = "sans_semibold", sansBold = "sans_bold";
  // const semibold = "sans_semibold";
  // sans_regular
}

class AppSizes {
  static const size12 = 12.0,
      size14 = 14.0,
      size16 = 16.0,
      size18 = 18.0,
      size20 = 20.0,
      size22 = 22.0,
      size24 = 24.0,
      size26 = 26.0,
      size34 = 34.0;
}

class AppStyles {
  static normal({String? title, double? size, Color? color = Colors.black}) {
    return title!.text.size(size).color(color).make();
  }

  static bold(
      {String? title,
      double? size,
      Color? color = Colors.black,
      TextAlign alignment = TextAlign.center}) {
    return title!.text
        .size(size)
        .color(color)
        .fontFamily(AppFonts.sansBold)
        .align(alignment)
        .make();
  }
}
