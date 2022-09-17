import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/default_button.dart';
import 'package:fruit_market/features/auth/presentation/pages/login_page.dart';
import 'package:fruit_market/features/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruit_market/features/on_boarding/presentation/widgets/custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? controller;

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageViewController: controller!,
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 24.0,
          left: SizeConfig.defaultSize! * 10.0,
          right: SizeConfig.defaultSize! * 10.0,
          child: CustomIndicator(
            curIndex: controller!.hasClients ? controller!.page! : 0,
          ),
        ),
        if (controller!.hasClients ? controller!.page != 2 : true)
          Positioned(
            top: SizeConfig.defaultSize! * 6,
            right: 32.0,
            child: TextButton(
              onPressed: () {
                if (controller!.hasClients) {
                  if (controller!.page! != 2) {
                    controller!.jumpToPage(2);
                  }
                }
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Color(
                    0xFF898989,
                  ),
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          right: 115.0,
          left: 115.0,
          child: DefaultButton(
            onPressed: () {
              if (controller!.hasClients) {
                if (controller!.page! != 2) {
                  controller!.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeIn,
                  );
                } else {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false);
                }
              }
            },
            width: 146,
            color: mainColor,
            text: controller!.hasClients
                ? controller!.page != 2
                    ? 'Next'
                    : 'Get Started'
                : 'Next',
          ),
        ),
      ],
    );
  }
}
