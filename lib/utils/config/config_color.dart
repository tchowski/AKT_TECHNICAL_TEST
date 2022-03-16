import 'package:flutter/material.dart';

/// Configuration of all colors of the application
abstract class ConfigColors {
  static const Color iconTheme = primary;
  static const Color scaffoldBackgroundColor = Colors.black;
  static const Color red = Color(0xffEA3943);
  static const Color green = Color(0xff03A678);

  ///Primary
  static const MaterialAccentColor primary = MaterialAccentColor(
    0xff383B61,
    <int, Color>{
      50: Color(0xffE9EAEF),
      100: Color(0xffC6CAD9),
      200: Color(0xffA3A9BF),
      300: Color(0xff8087A5),
      400: Color(0xff676E92),
      500: Color(0xff4E5582),
      600: Color(0xff484E79),
      700: Color(0xff3F446E),
      800: Color(0xff383B61),
      900: Color(0xff2C2B48),
    },
  );

  ///Secondary
  static const MaterialAccentColor secondary = MaterialAccentColor(
    0xff00E0D5,
    <int, Color>{
      50: Color(0xffD6F8F6),
      100: Color(0xff94ECE6),
      200: Color(0xff00E0D5),
      300: Color(0xff00D0C0),
      400: Color(0xff00C1AF),
      500: Color(0xff00B39D),
      600: Color(0xff00A58E),
      700: Color(0xff00947C),
      800: Color(0xff00836C),
      900: Color(0xff00654C),
    },
  );

  ///Text (to verify - seems wrong)
  static const Color textBlack = Color(0xff383B61);
  static const Color textGraydark = Color(0xff8087A5);
  static const Color textGraylight = Color(0xffEAF0F9);
}
