import 'package:flutter/material.dart';
import 'package:lottie_app/components/row_coins.dart';
import 'package:lottie_app/core/core.dart';
import 'package:lottie_app/mocks/coins_mock.dart';

class DetalheCrypto extends StatelessWidget {
  const DetalheCrypto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Torus",
                        style: AppTextStyles.heading40,
                      ),
                      const Text(
                        "image",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    "April 04, 2022",
                    textAlign: TextAlign.right,
                    style: AppTextStyles.dateHeading,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '191.232.89',
                        style: TextStyle(color: Colors.white, fontSize: 49),
                      ),
                      Text("  USD", style: AppTextStyles.dateHeading)
                    ],
                  ),
                  const Text(
                    "\$ 76.89.32    +4%",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(color: Colors.white10),
                    itemCount: coinsMock.length,
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (context, index) {
                      return RowCoins(
                        coin: coinsMock[index],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
