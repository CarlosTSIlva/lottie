import 'package:flutter/material.dart';
import 'package:lottie_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: (settings) => Routes().getRoute(settings),
    );
  }
}
