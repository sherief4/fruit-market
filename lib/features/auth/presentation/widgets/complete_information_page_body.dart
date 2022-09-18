import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/constants.dart';
import 'package:fruit_market/core/widgets/default_button.dart';
import 'package:fruit_market/core/widgets/vertical_space.dart';
import 'package:fruit_market/features/auth/presentation/widgets/custom_text_form_field.dart';

class CompleteInformationPageBody extends StatelessWidget {
  CompleteInformationPageBody({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(
                5.0,
              ),
              CustomTextFormField(
                title: 'Enter your name',
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Name Can\'t be empty.';
                  }
                  return null;
                },
                controller: nameController,
              ),
              const VerticalSpace(
                5.0,
              ),
              CustomTextFormField(
                title: 'Enter your phone number',
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Phone Number Can\'t be empty.';
                  }
                  return null;
                },
                controller: phoneNumberController,
              ),
              const VerticalSpace(
                5.0,
              ),
              CustomTextFormField(
                title: 'Add address',
                maxLines: 5,
                validator: (String? value) {
                  return null;
                },
                controller: addressController,
              ),
              const VerticalSpace(
                5.0,
              ),
              DefaultButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                color: mainColor,
                width: double.infinity,
                text: 'Continue',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
