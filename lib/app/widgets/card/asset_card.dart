import 'package:akt_test/entities/crypto_asset.dart';
import 'package:akt_test/utils/extension.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
  final CryptoAsset cryptoAsset;
  const AssetCard({Key? key, required this.cryptoAsset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme _theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _placeholderCard(),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            cryptoAsset.ticker,
            style: _theme.subtitle1!.copyWith(color: Colors.white),
          ),
          _spaceBeetwenSubtitle(),
          AutoSizeText(
            '${cryptoAsset.price.formatToCurrency()} €',
            style: _theme.bodyText2!.copyWith(color: Colors.white60),
          ),
          _spaceBeetwenSubtitle(),
          _variation(_theme)
        ],
      ),
    );
  }

  Card _placeholderCard() {
    return Card(
        margin: EdgeInsets.zero,
        color: const Color(0x00ffffff).getRandomColor(),
        child: const SizedBox(
          height: 90,
          width: 90,
        ));
  }

  Widget _spaceBeetwenSubtitle() {
    return const SizedBox(
      height: 2,
    );
  }

  Row _variation(TextTheme _theme) {
    final Color variationColor = cryptoAsset.variation.getCurrentVariationPriceColor();
    final IconData variationIcon = cryptoAsset.variation.getCurrentVariationPriceIcon();
    return Row(
      children: <Widget>[
        Icon(
          variationIcon,
          size: 13,
          color: variationColor,
        ),
        const SizedBox(
          width: 2,
        ),
        AutoSizeText(
          '${cryptoAsset.variation.toStringAsFixed(2)} %',
          style: _theme.bodyText2!.copyWith(color: variationColor),
        ),
      ],
    );
  }
}
