import 'package:flutter/material.dart';
import 'package:fruit_market/features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const FruitMarketApp());
}

class FruitMarketApp extends StatelessWidget {
  const FruitMarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       primarySwatch: Colors.green,
     ),
      home: const SplashPage(),
    );
  }
}
