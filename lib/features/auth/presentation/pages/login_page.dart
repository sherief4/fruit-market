import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/presentation/widgets/login_page_body.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:LoginPageBody(),
    );
  }
}
