import 'package:flutter/material.dart';
import 'package:fruit_market/features/on_boarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }
}
