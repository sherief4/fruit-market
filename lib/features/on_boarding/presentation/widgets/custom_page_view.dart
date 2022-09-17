import 'package:flutter/material.dart';
import 'package:fruit_market/features/on_boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, required this.pageViewController,}) : super(key: key);
final PageController pageViewController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      children: const [
        PageViewItem(
          image: 'assets/images/on_boarding_1.png',
          title: 'E-Shopping',
          subtitle: 'Explore  top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/on_boarding_2.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/on_boarding_3.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
