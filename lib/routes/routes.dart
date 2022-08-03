import 'package:flutter/material.dart';
import 'package:lottie_app/routes/page_transition.dart';
import 'routes_imports.dart';

class Routes {
  static const String home = 'home';
  static const String detalheCrypto = 'detalhe_crypto';

  Route? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return PageTransition(child: const Home()).build();
      case detalheCrypto:
        return PageTransition(child: const DetalheCrypto()).build();
    }
    return null;
  }
}
