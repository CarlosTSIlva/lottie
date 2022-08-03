import 'package:flutter/material.dart';

class PageTransition {
  Widget child;
  Duration transitionDuration;

  PageTransition({
    required this.child,
    this.transitionDuration = const Duration(milliseconds: 1200),
  });

  build() {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) => child,
      // transitionsBuilder: (_, a, __, c) =>
      //     FadeTransition(opacity: a, child: c),
      // transitionDuration: transitionDuration,
    );
  }
}
