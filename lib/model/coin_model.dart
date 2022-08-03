import 'package:flutter/material.dart';

class CoinModel {
  CoinModel({
    required this.nameCoin,
    required this.shortCoin,
    required this.imageCoin,
    required this.priceCoin,
    required this.percentCoin,
    required this.colorCoin,
  });

  final String nameCoin;
  final String shortCoin;
  final String imageCoin;
  final String priceCoin;
  final String percentCoin;
  final Color colorCoin;
}
