import 'package:akt_test/utils/config/config_color.dart';
import 'package:akt_test/utils/config/config_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// ignore: avoid_classes_with_only_static_members
abstract class ConfigTheme {
  static ThemeData light(BuildContext context) {
    return ThemeData(
      primaryColorLight: ConfigColors.primary,
      fontFamily: ConfigFont.primaryFont,
      primaryColor: ConfigColors.primary,
      radioTheme: RadioThemeData(
        fillColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) => ConfigColors.primary),
      ),
      secondaryHeaderColor: ConfigColors.secondary,

      /// secondaryHeaderColor
      // accentColor: ConfigColors.secondary,
      brightness: Brightness.light,
      errorColor: ConfigColors.errorColor,
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: ConfigColors.primary,
        brightness: Brightness.light,
      ),

      /// outlinedButtonTheme [OutlinedButtonThemeData]
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ConfigColors.primary, width: 0.8),
        primary: ConfigColors.primary,
        // textStyle: Theme.of(context).textTheme.button,
        minimumSize: const Size(80, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      )),

      /// TextButtonThemeData [TextButtonThemeData]
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: ConfigColors.primary,
        textStyle: Theme.of(context).textTheme.caption!.copyWith(
              fontFamily: ConfigFont.primaryFont,
            ),
      )),
      checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          splashRadius: 0,
          side: BorderSide(width: 1.5, color: ConfigColors.primary[100]!)),

      /// ElevatedButtonThemeData [ElevatedButtonThemeData]
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: ConfigColors.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        // shape: const StadiumBorder(),
        // textStyle: Theme.of(context).textTheme.button,
        side: const BorderSide(
          color: ConfigColors.secondary,
          width: 0.5,
        ),
        elevation: 0.2,
        // minimumSize: const Size(80, 40),
      )),

      /// bottomNavigationBarThemeData [BottomNavigationBarThemeData]
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          selectedLabelStyle:
              const TextStyle(fontFamily: ConfigFont.primaryFont, letterSpacing: .4),
          unselectedLabelStyle:
              const TextStyle(fontFamily: ConfigFont.primaryFont, letterSpacing: .4),
          selectedItemColor: ConfigColors.primary),

      /// AppBarTheme [AppBarTheme]
      appBarTheme: const AppBarTheme(
          // brightness: Brightness.light,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(
            color: ConfigColors.iconTheme,
          ),
          elevation: 1,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontFamily: ConfigFont.primaryFont,
              color: Colors.white),
          backgroundColor: Colors.black),

      /// InputDecorationTheme [InputDecorationTheme]
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        labelStyle: const TextStyle(
            color: ConfigColors.hintColor,
            fontFamily: ConfigFont.primaryFont,
            fontWeight: FontWeight.w200),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConfigColors.itemMenuBackground.withOpacity(.16),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConfigColors.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConfigColors.itemMenuBackground.withOpacity(.16),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: false,
        hintStyle: const TextStyle(
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
          fontWeight: FontWeight.w200,
        ),
      ),
      chipTheme: Theme.of(context).chipTheme.copyWith(
          backgroundColor: ConfigColors.cardBackground,
          labelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ConfigColors.primary[800],
              fontFamily: ConfigFont.primaryFont)),
      switchTheme: SwitchThemeData(
          overlayColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary),
          trackColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary),
          thumbColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary)),
      scaffoldBackgroundColor: ConfigColors.scaffoldBackgroundColor,
      textSelectionTheme: const TextSelectionThemeData(cursorColor: ConfigColors.primary),
      // dividerTheme: DividerThemeData(indent: 16, color: Colors.black54, space: 0),
      iconTheme: const IconThemeData(color: Colors.black54),
      // textTheme: Theme.of(context).textTheme.apply(
      //       fontFamily: ConfigFont.primaryFont,
      //       bodyColor: ConfigColors.primary,
      //       displayColor: ConfigColors.primary,
      //     ),

      /// textTheme [TextTheme]
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),
        headline2: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),
        headline3: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        /// also text input style
        subtitle1: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ConfigColors.primary[800],
          fontFamily: ConfigFont.primaryFont,
        ),
        bodyText2: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        // /// Button large in stylesheet
        // button: const TextStyle(
        //   fontSize: 12,
        //   fontWeight: FontWeight.w700,
        //   fontFamily: ConfigFont.primaryFont,
        // ),

        /// Link in stylesheet
        caption: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: ConfigFont.primaryFont,
        ),

        /// Menu Item in stylesheet
        overline: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          fontFamily: ConfigFont.primaryFont,
        ),
      ),
    );
  }

  static ThemeData dark(BuildContext context) {
    return ThemeData(
      primaryColorLight: ConfigColors.primary,
      fontFamily: ConfigFont.primaryFont,
      primaryColor: ConfigColors.primary,
      radioTheme: RadioThemeData(
        fillColor:
            MaterialStateColor.resolveWith((Set<MaterialState> states) => ConfigColors.primary),
      ),
      secondaryHeaderColor: ConfigColors.secondary,

      /// secondaryHeaderColor
      // accentColor: ConfigColors.secondary,
      brightness: Brightness.dark,
      errorColor: ConfigColors.errorColor,
      cupertinoOverrideTheme: const CupertinoThemeData(
        primaryColor: ConfigColors.primary,
        brightness: Brightness.light,
      ),

      /// outlinedButtonTheme [OutlinedButtonThemeData]
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ConfigColors.primary, width: 0.8),
        primary: ConfigColors.primary,
        // textStyle: Theme.of(context).textTheme.button,
        minimumSize: const Size(80, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      )),

      /// TextButtonThemeData [TextButtonThemeData]
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: ConfigColors.primary,
        textStyle: Theme.of(context).textTheme.caption!.copyWith(
              fontFamily: ConfigFont.primaryFont,
            ),
      )),
      checkboxTheme: CheckboxThemeData(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          splashRadius: 0,
          side: BorderSide(width: 1.5, color: ConfigColors.primary[100]!)),

      /// ElevatedButtonThemeData [ElevatedButtonThemeData]
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: ConfigColors.secondary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

        // shape: const StadiumBorder(),
        // textStyle: Theme.of(context).textTheme.button,
        side: const BorderSide(
          color: ConfigColors.secondary,
          width: 0.5,
        ),
        elevation: 0.2,
        // minimumSize: const Size(80, 40),
      )),

      /// bottomNavigationBarThemeData [BottomNavigationBarThemeData]
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          selectedLabelStyle:
              const TextStyle(fontFamily: ConfigFont.primaryFont, letterSpacing: .4),
          unselectedLabelStyle:
              const TextStyle(fontFamily: ConfigFont.primaryFont, letterSpacing: .4),
          selectedItemColor: ConfigColors.primary),

      /// AppBarTheme [AppBarTheme]
      appBarTheme: const AppBarTheme(
          // brightness: Brightness.light,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: IconThemeData(
            color: ConfigColors.iconTheme,
          ),
          elevation: 1,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              fontFamily: ConfigFont.primaryFont,
              color: ConfigColors.primary),
          backgroundColor: Colors.white),

      /// InputDecorationTheme [InputDecorationTheme]
      inputDecorationTheme: InputDecorationTheme(
        // contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        labelStyle: const TextStyle(
            color: ConfigColors.hintColor,
            fontFamily: ConfigFont.primaryFont,
            fontWeight: FontWeight.w200),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConfigColors.itemMenuBackground.withOpacity(.16),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ConfigColors.primary,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ConfigColors.itemMenuBackground.withOpacity(.16),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        filled: false,
        hintStyle: const TextStyle(
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
          fontWeight: FontWeight.w200,
        ),
      ),
      chipTheme: Theme.of(context).chipTheme.copyWith(
          backgroundColor: ConfigColors.cardBackground,
          labelStyle: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ConfigColors.primary[800],
              fontFamily: ConfigFont.primaryFont)),
      switchTheme: SwitchThemeData(
          overlayColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary),
          trackColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary),
          thumbColor: MaterialStateProperty.resolveWith(
              (Set<MaterialState> states) => ConfigColors.primary)),
      scaffoldBackgroundColor: ConfigColors.scaffoldBackgroundColor,
      textSelectionTheme: const TextSelectionThemeData(cursorColor: ConfigColors.primary),
      // dividerTheme: DividerThemeData(indent: 16, color: Colors.black54, space: 0),
      iconTheme: const IconThemeData(color: Colors.black54),
      // textTheme: Theme.of(context).textTheme.apply(
      //       fontFamily: ConfigFont.primaryFont,
      //       bodyColor: ConfigColors.primary,
      //       displayColor: ConfigColors.primary,
      //     ),

      /// textTheme [TextTheme]
      textTheme: TextTheme(
        headline1: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),
        headline2: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),
        headline3: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        /// also text input style
        subtitle1: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        bodyText1: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ConfigColors.primary[800],
          fontFamily: ConfigFont.primaryFont,
        ),
        bodyText2: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: ConfigColors.primary,
          fontFamily: ConfigFont.primaryFont,
        ),

        // /// Button large in stylesheet

        /// Link in stylesheet
        caption: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: ConfigFont.primaryFont,
        ),

        /// Menu Item in stylesheet
        overline: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          fontFamily: ConfigFont.primaryFont,
        ),
      ),
    );
  }
}
