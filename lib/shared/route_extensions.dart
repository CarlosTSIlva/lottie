import 'package:flutter/material.dart';
import 'package:lottie_app/shared/navigarion_features.dart';

extension RoutesExtensions on BuildContext {
  /// Exemple of use for [RoutesExtensions].
  /// Use this extension when you need to navigate between app pages

  /// Use [closePage] when you need to close an app page
  ///   - this method checks if the app has a previous page to go back to
  ///   - IF TRUE: go back (close actual page)
  ///   - IF FALSE: terminate app
  /// Use [openPage] when you need to open a page over the current opened page
  /// Use [replacePage] when you need to pull out the current page and overwrite it
  /// Use [replaceAllPages] when you need to open a page and pull out all others opened pages from the current stack of pages

  openPage(String name, {dynamic arguments}) =>
      AppNavigator(this).open(name, arguments: arguments);
  replacePage(String name, {dynamic arguments}) =>
      AppNavigator(this).replace(name, arguments: arguments);
  replaceAllPages(String name, {dynamic arguments}) =>
      AppNavigator(this).replaceAll(name, arguments: arguments);
}
