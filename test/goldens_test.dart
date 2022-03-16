// ignore_for_file: avoid_print

import 'package:akt_test/app/pages/home/home_controller.dart';
import 'package:akt_test/app/pages/splash/splash_controller.dart';
import 'package:akt_test/device/localization_delegate.dart';
import 'package:akt_test/utils/config/config_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:vrouter/vrouter.dart';
import 'device_list.dart';

final GlobalKey<VRouterState> _router = GlobalKey<VRouterState>();
Widget _createApplication(
    {required Widget home, required String url, Locale local = const Locale('fr')}) {
  print('current receive url=$url');

  return Builder(builder: (BuildContext context) {
    return MaterialApp(
      key: _router,
      debugShowCheckedModeBanner: false,
      theme: ConfigTheme.light(context),
      themeMode: ThemeMode.light,
      locale: local,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[Locale('fr', ''), Locale('en', '')],
      home: home,
    );
  });
}

Future<void> _makeOneScreenShot(WidgetTester tester, Device device, Widget screen, String url,
    {String suffix = ''}) async {
  try {
    final Widget app = _createApplication(home: screen, url: url);

    await tester.runAsync(() async {
      await tester.pumpWidget(app);
      await tester.pump(const Duration(seconds: 3));
      for (final Element element in find.byType(Image).evaluate()) {
        final Image widget = element.widget as Image;
        final ImageProvider image = widget.image;
        await precacheImage(image, element);
        await tester.pumpAndSettle();
      }
    });
    final String name =
        'device=${device.name}/${screen.toStringShort()}$suffix/${screen.toStringShort()}';
    print('running $name');
    await multiScreenGolden(tester, name, devices: <Device>[device]);
  } catch (e) {
    print('issue ${e.toString()}');
    rethrow;
  }
}

const List<String> routes = <String>[
  '/',
  '/home',
];

final List<Widget> miscaleunous = <Widget>[
  const SplashPage(
    testing: true,
  ),
  const HomePage()
];

void main() {
  setUpAll(() async {
    await loadAppFonts();
  });

  group('Golden', () {
    testGoldens('Screens Pages', (WidgetTester tester) async {
      int i = 0;
      for (final Widget page in miscaleunous) {
        print('current route=${routes[i]}');
        for (final Device device in devices) {
          try {
            await _makeOneScreenShot(tester, device, page, routes[i]);
          } catch (e) {
            print(e.toString());
          }
        }
        i = i + 1;
      }
    });
  });
}
