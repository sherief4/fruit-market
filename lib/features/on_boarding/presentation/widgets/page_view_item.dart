import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/vertical_space.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle})
      : super(key: key);
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(
          20.0,
        ),
        SizedBox(
          height: 200.0,
          child: Image.asset(
            image,
          ),
        ),
        const VerticalSpace(
          3.0,
        ),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(
              0xFF2F2E41,
            ),
            fontSize: 20.0,
          ),
        ),
        const VerticalSpace(
          1.5,
        ),
        Text(
          subtitle,
          style: const TextStyle(
            color: Color(
              0xFF78787C,
            ),
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
