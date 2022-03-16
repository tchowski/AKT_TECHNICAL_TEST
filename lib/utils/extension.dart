import 'package:akt_test/utils/config/config_color.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'dart:math' as math;

extension DoubleExtension on double {
  Color getCurrentVariationPriceColor() {
    return isNegative ? ConfigColors.errorColor : ConfigColors.greenChart;
  }

  IconData getCurrentVariationPriceIcon() {
    return isNegative ? Iconsax.arrow_down_2 : Iconsax.arrow_up_1;
  }
}

extension ColorExtension on Color {
  Color getRandomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}

extension NumExtension on num {
  String getString() {
    return toString();
  }

  /// Converts a double to a currency formatted string.
  String formatToCurrency(
      {int decimalDigits = 2, String thousandSeparator = ' ', String decimalSeparator = ','}) {
    String value = toStringAsFixed(decimalDigits);
    value = value.replaceAll(RegExp(r'\D'), decimalSeparator);
    value = value.replaceAll(
        RegExp(r'\B(?<!\.\d*)(?=(\d{3})+(?!\d))'.replaceFirst('.', decimalSeparator)),
        thousandSeparator);
    return value;
  }
}
