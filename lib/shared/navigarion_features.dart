import 'package:flutter/material.dart';

abstract class NavigatorFeatures {
  Future<void> open(String name, {dynamic arguments});
  Future<void> replace(String name, {dynamic arguments});
  Future<void> replaceAll(String name, {dynamic arguments});
}

class AppNavigator implements NavigatorFeatures {
  BuildContext context;
  AppNavigator(this.context);

  /// Exemple of use for [AppNavigator].
  /// [open] is called when you need to open a page over the current opened page
  /// [replace] is called when you need to pull out the current page and overwrite it
  /// [replaceAll] is called when you need to open a page and pull out all others opened pages from the current stack of pages

  @override
  Future<void> open(String name, {dynamic arguments}) =>
      Navigator.of(context).pushNamed(name, arguments: arguments);

  @override
  Future<void> replace(String name, {dynamic arguments}) =>
      Navigator.of(context).pushReplacementNamed(name, arguments: arguments);

  @override
  Future<void> replaceAll(String name, {dynamic arguments}) =>
      Navigator.of(context).pushNamedAndRemoveUntil(
          name, (Route<dynamic> route) => false,
          arguments: arguments);
}
