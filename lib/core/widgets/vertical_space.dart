import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.ratio, {super.key});
  final double? ratio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * ratio!,
    );
  }
}
