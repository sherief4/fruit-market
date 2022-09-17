import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/horizontal_space.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final String icon;
  final void Function() onPressed ;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log In with',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              const HorizontalSpace(
                1.0,
              ),
              SizedBox(
                height: 26.0,
                width: 26.0,
                child: Image.asset(
                  icon,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
