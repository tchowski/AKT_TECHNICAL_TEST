import 'dart:convert';

class CryptoAsset {
  final String ticker;
  final double price;
  final double variation;
  CryptoAsset({
    this.ticker = '',
    this.price = 0.0,
    this.variation = 0.0,
  });

  CryptoAsset copyWith({
    String? ticker,
    double? price,
    double? variation,
  }) {
    return CryptoAsset(
      ticker: ticker ?? this.ticker,
      price: price ?? this.price,
      variation: variation ?? this.variation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ticker': ticker,
      'price': price,
      'variation': variation,
    };
  }

  factory CryptoAsset.fromMap(Map<String, dynamic> map) {
    return CryptoAsset(
      ticker: map['ticker'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      variation: map['variation']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CryptoAsset.fromJson(String source) => CryptoAsset.fromMap(json.decode(source));

  @override
  String toString() => 'CryptoAsset(ticker: $ticker, price: $price, variation: $variation)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CryptoAsset &&
        other.ticker == ticker &&
        other.price == price &&
        other.variation == variation;
  }

  @override
  int get hashCode => ticker.hashCode ^ price.hashCode ^ variation.hashCode;
}
