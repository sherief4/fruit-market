import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/splash/presentation/widgets/splash_body.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: mainColor,
      body: SplashBody(),
    );
  }
}
