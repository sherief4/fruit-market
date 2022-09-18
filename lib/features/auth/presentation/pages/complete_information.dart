import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/presentation/widgets/complete_information_page_body.dart';

class CompleteInformationPage extends StatelessWidget {
  const CompleteInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CompleteInformationPageBody()),
    );
  }
}
