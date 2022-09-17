import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({Key? key, required this.curIndex}) : super(key: key);
final double curIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: curIndex,
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          side: const BorderSide(
            color: mainColor,
          ),
        ),
      ),
    );
  }
}
