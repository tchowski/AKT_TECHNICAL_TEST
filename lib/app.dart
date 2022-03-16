// ignore_for_file: prefer_function_declarations_over_variables

import 'package:akt_test/device/localization_delegate.dart';
import 'package:akt_test/routes.dart';
import 'package:akt_test/utils/config/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vrouter/vrouter.dart';

class App extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const App();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return VRouter(
      mode: VRouterMode.history,
      debugShowCheckedModeBanner: false,
      initialUrl: '/',
      theme: ConfigTheme.light(context),
      themeMode: ThemeMode.light,
      supportedLocales: const <Locale>[Locale('fr', ''), Locale('en', '')],
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: AppRoutes().webRoutes,
      builder: (BuildContext context, Widget child) {
        return child;
      },
    );
  }
}
