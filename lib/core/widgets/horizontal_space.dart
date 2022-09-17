import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.ratio, {super.key});
  final double? ratio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * ratio!,
    );
  }
}
