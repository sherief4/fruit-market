import 'package:flutter/material.dart';
import 'package:fruit_market/features/on_boarding/presentation/pages/on_boarding_page.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? fadingAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 800,
      ),
    );

    fadingAnimation = Tween<double>(
      begin: 0.2,
      end: 1,
    ).animate(controller!);
    controller?.repeat(
      reverse: true,
    );
    goToNextPage();
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void goToNextPage() {
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const OnBoardingPage()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        AnimatedBuilder(
          animation: fadingAnimation!,
          builder: (context, _) => Opacity(
            opacity: fadingAnimation?.value,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 51.0,
              ),
            ),
          ),
        ),
        Image.asset(
          'assets/images/mix_fruit.png',
        ),
      ],
    );
  }
}
