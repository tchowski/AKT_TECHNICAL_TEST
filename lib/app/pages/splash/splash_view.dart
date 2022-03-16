import 'package:akt_test/app/pages/splash/splash_controller.dart';
import 'package:akt_test/utils/config/config_asset.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SplashView extends StatefulWidget {
  final BuildContext context;
  final SplashController controller;
  const SplashView(
    this.context, {
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Widget _appScaffold({required Widget body}) {
    return Scaffold(backgroundColor: Colors.white, body: _body());
  }

  Widget _body() => logo;

  Center get logo => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeTransition(
                opacity: widget.controller.animation, child: Image.asset(ConfigAsset.splash))
          ],
        ),
      );

  Widget get mobileView => _appScaffold(body: _body());

  Widget get tabletView => _appScaffold(body: _body());

  Widget get desktopView => _appScaffold(body: _body());

  Widget get watchView => _appScaffold(body: _body());

  @override
  Widget build(BuildContext context) {
    // Construct and pass in a widget builder per screen type
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileView,
      tablet: (BuildContext context) => tabletView,
      desktop: (BuildContext context) => desktopView,
      watch: (BuildContext context) => watchView,
    );
  }
}
