import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_app/core/core.dart';
import 'package:lottie_app/routes/routes.dart';
import 'package:lottie_app/shared/route_extensions.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://cdn.shopify.com/s/files/1/0305/4075/9177/products/papel-de-parede-adesivo-degrade-verde-bandeira-e-azul-n05159-552005.jpg?v=1643336712",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    colors: [Colors.white60, Colors.white10],
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Torus",
                          style: AppTextStyles.heading40,
                        ),
                        Lottie.asset(AppImages.circleAnimation),
                        Flexible(
                          child: Text(
                            "Track your finance",
                            style: AppTextStyles.heading80,
                          ),
                        ),
                        Text(
                          "keep track of your savings and changes in the cryptocurrency market ",
                          style: AppTextStyles.heading,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              context.replacePage(Routes.detalheCrypto);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 128, 128, 128),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            child: const Icon(Icons.arrow_right_alt_sharp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
