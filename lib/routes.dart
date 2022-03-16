import 'package:akt_test/app/pages/home/home_controller.dart';
import 'package:akt_test/app/pages/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class AppRoutes {
  List<VRouteElement> get webRoutes =>
      <VRouteElement>[..._homeRoutes, VRouteRedirector(path: r':_(.*)', redirectTo: '/unknown')];

  List<VRouteElement> get _homeRoutes => <VRouteElement>[
        VWidget(
          path: '/',
          widget: const SplashPage(),
        ),
        VWidget(
          path: '/home',
          widget: const HomePage(),
        ),
        VWidget(
          path: '/unknown',
          widget: Container(),
        ),
      ];
}
