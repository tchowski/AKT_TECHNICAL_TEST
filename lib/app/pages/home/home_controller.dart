import 'package:akt_test/app/pages/home/home_view.dart';
import 'package:akt_test/entities/crypto_asset.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomeController createState() => HomeController();
}

class HomeController extends State<HomePage> {
  final List<CryptoAsset> _cryptoAsset = <CryptoAsset>[
    CryptoAsset(price: 41000.30, ticker: 'BTC', variation: 2.19),
    CryptoAsset(price: 0.75, ticker: 'XRP', variation: -2.19),
    CryptoAsset(price: 256, ticker: 'EGLD', variation: 14.23),
    CryptoAsset(price: 125, ticker: 'DENT', variation: 2.19),
    CryptoAsset(price: 13, ticker: 'UNI', variation: -2.17),
    CryptoAsset(price: 351, ticker: 'AAVE', variation: -0.17),
    CryptoAsset(price: 3200, ticker: 'ETH', variation: 2.19),
    CryptoAsset(price: 2.14, ticker: 'CHZ', variation: 10.19),
    CryptoAsset(price: 3.2, ticker: 'XTZ', variation: -3.78),
  ];

  final List<String> _subtitleList = <String>['cryptos', 'tokens'];

  @override
  Widget build(BuildContext context) {
    return HomeView(context, controller: this);
  }

  /// getters
  List<CryptoAsset> get cryptoAsset => _cryptoAsset;
  List<String> get subtitleList => _subtitleList;
}
