import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constants.dart';
import 'package:fruit_market/core/widgets/horizontal_space.dart';
import 'package:fruit_market/core/widgets/vertical_space.dart';
import 'package:fruit_market/features/auth/presentation/widgets/login_button.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: Column(
          children: [
            const VerticalSpace(
              8.0,
            ),
            SizedBox(
              width: 221,
              height: 166,
              child: Image.asset(
                logo,
              ),
            ),
            const VerticalSpace(
              3.0,
            ),
            const Text(
              'Fruit Market',
              style: TextStyle(
                color: mainColor,
                fontWeight: FontWeight.w700,
                fontSize: 51.0,
              ),
            ),
            const VerticalSpace(
              20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: LoginButton(
                    onPressed: () {},
                    icon: 'assets/images/google.png',
                  ),
                ),
                const HorizontalSpace(
                  2,
                ),
                Expanded(
                  child: LoginButton(
                    onPressed: () {},
                    icon: 'assets/images/fb.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
