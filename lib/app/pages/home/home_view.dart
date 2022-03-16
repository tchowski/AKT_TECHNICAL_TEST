import 'package:akt_test/app/pages/home/home_controller.dart';
import 'package:akt_test/app/widgets/app_bar/default_sliver_app_bar.dart';
import 'package:akt_test/app/widgets/card/asset_card.dart';
import 'package:akt_test/device/localization_delegate.dart';
import 'package:akt_test/entities/crypto_asset.dart';
import 'package:akt_test/utils/config/config_asset.dart';
import 'package:akt_test/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:iconsax/iconsax.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final HomeController controller;
  final BuildContext context;
  const HomeView(this.context, {Key? key, required this.controller}) : super(key: key);

  TextTheme get _theme => Theme.of(context).textTheme;

  Widget _body() {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: <Widget>[
            _sliverAppBar(),
            _sliverListBody(),
          ],
        ),
      ),
    );
  }

  SliverList _sliverListBody() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (_, int index) {
          return _listCategory(
              randomBoolean() ? controller.subtitleList[0] : controller.subtitleList[1]);
        },
        childCount: 5,
      ),
    );
  }

  Widget _listCategory(String label) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AutoSizeText(
              AppLocalizations.of(context)!.translate(label),
              style: _theme.bodyText1!.copyWith(color: Colors.white70),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: controller.cryptoAsset
                      .map((CryptoAsset e) => AssetCard(cryptoAsset: e))
                      .toList()),
            )
          ]),
    );
  }

  DefaultSliverAppBar _sliverAppBar() {
    return DefaultSliverAppBar(
      title: AutoSizeText(AppLocalizations.of(context)!.translate('investments')),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned.fill(
              child: Image.asset(
                ConfigAsset.logo,
                fit: BoxFit.cover,
              ),
            ),
            _bottomSliverAppBar(),
          ],
        ),
      ),
    );
  }

  Padding _bottomSliverAppBar() {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        AutoSizeText(
          AppLocalizations.of(context)!.translate('aktToken'),
          style: _theme.headline1!.copyWith(color: Colors.white, fontSize: 35),
        ),
        const SizedBox(
          height: 10,
        ),
        AutoSizeText(
          AppLocalizations.of(context)!.translate('titleSliverAppBarHome'),
          style: _theme.bodyText2!.copyWith(color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: const Size(20, 30)),
            onPressed: () => <Function>{},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AutoSizeText(
                  AppLocalizations.of(context)!.translate('learnMore'),
                  style: _theme.bodyText2!.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Iconsax.arrow_right_2,
                  size: 16,
                )
              ],
            )),
      ]),
    );
  }

  Widget get mobileView => _body();

  Widget get tabletView => _body();

  Widget get desktopView => _body();

  Widget get watchView => _body();

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
