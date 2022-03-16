import 'package:flutter/material.dart';

/// Configuration of all colors of the application
abstract class ConfigColors {
  /// primary & secondary colors
  static const Color gradientChart = Color(0xff516294);
  static const Color primaryOpacity = Color(0xffEAF0F9);
  static const Color purple = Color(0xff6E7EBF);
  static const Color emptyWallet = Color.fromRGBO(117, 142, 205, 0.1);
  static const Color white = Color(0xffFFFFFF);
  static const Color hintColor = Color(0xff8087A5);

  static Color secondaryLight = const Color(0xffa1feda).withOpacity(0.3);
  static Color dividerColor = const Color.fromARGB(1, 56, 59, 97);
  static const Color scaffoldBackgroundColor = Colors.black;
  static const Color iconTheme = primary;
  static const Color iconThemeDark = Colors.white54;
  static const Color iconThemeFront = Colors.white38;
  static const Color keyboard = Colors.white54;
  static const Color errorColor = Color(0xffEA3943);
  static const Color redChart = Color(0xffD82122);
  static const Color greenChart = Color(0xff03A678);

  static const Color redDeskoin = Color(0xffE65722);
  static const Color greenDeskoin = Color(0xff03A678);
  static const Color success = Color(0xff03A678);
  static const Color warning = Color(0xffEA3943);
  static final Color backgroundColorLoading = primary.withOpacity(0.05);

  static const Color brandNew = Color(0xffE73C70);
  static const Color brandExclu = primary;

  ///Colors as in chart
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

  ///Terciary
  static const MaterialAccentColor terciary = MaterialAccentColor(
    0xffA0DDFF,
    <int, Color>{
      100: Color(0xffA0DDFF),
      200: Color(0xff758ECD),
      300: Color(0xffC1CEFE),
      400: Color(0xff7189FF),
      500: Color(0xff516294),
    },
  );

  ///Text (to verify - seems wrong)
  static const Color textBlack = Color(0xff383B61);
  static const Color textGraydark = Color(0xff8087A5);
  static const Color textGraylight = Color(0xffEAF0F9);

  ///Background (to verify - seems wrong)
  static const Color cardBackground = Color(0xffEAF0F9);
  static Color itemMenuBackground = const Color(0xff6E7EBF).withOpacity(.16);
  static const Color modalBackground = Color(0xffF7F7FB);

  /// gradient colors

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xff3C4070),
      Color(0xff3E52A1),
    ],
  );

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xff72EAE4),
      Color(0xff18C9C0),
    ],
  );

  static LinearGradient terciaryGradient1 = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[
      const Color(0xff768DE7).withOpacity(.4),
      const Color(0xff00E0D5).withOpacity(.4),
    ],
  );

  static LinearGradient terciaryGradient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      const Color(0xff6E7EBF).withOpacity(0),
      const Color(0xff6E7EBF).withOpacity(0.4),
    ],
  );

  static final LinearGradient redChartGradient = LinearGradient(
    begin: const Alignment(-1, 0),
    end: const Alignment(0.9, 0),
    colors: <Color>[
      redChart.withOpacity(0.6),
      redChart.withOpacity(0.4),
      redChart.withOpacity(0),
    ],
  );

  static final LinearGradient greenChartGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      greenChart.withOpacity(0.6),
      greenChart.withOpacity(0.4),
      greenChart.withOpacity(0),
    ],
  );

  static const LinearGradient sideBarGradient = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 0),
    colors: <Color>[Color(0xffEAF5FC), Color(0xffeff0f7)],
  );

  static const LinearGradient authGradient = LinearGradient(
    begin: Alignment(0, -1),
    end: Alignment(0, 0),
    colors: <Color>[Color(0xff383B61), Color(0xff3C5088)],
  );

  static LinearGradient toastGradient = const LinearGradient(
    begin: Alignment(0, 0),
    end: Alignment(0, 0),
    colors: <Color>[Color.fromARGB(255, 114, 234, 228), Color.fromARGB(255, 24, 201, 192)],
  );
}
