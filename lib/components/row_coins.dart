import 'package:flutter/material.dart';
import 'package:lottie_app/model/coin_model.dart';

class RowCoins extends StatelessWidget {
  final CoinModel coin;
  const RowCoins({
    Key? key,
    required this.coin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(29, 33, 31, 0.8),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: Center(
                child: Image.asset(
                  coin.imageCoin,
                  width: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coin.nameCoin,
                    style: const TextStyle(fontSize: 19)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    coin.shortCoin,
                    style:
                        TextStyle(color: coin.colorCoin).copyWith(fontSize: 11),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          width: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(coin.priceCoin,
                  style: const TextStyle(color: Colors.white).copyWith(
                    fontWeight: FontWeight.w600,
                  )),
              Text(
                coin.percentCoin,
                style: const TextStyle(color: Colors.white).copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
