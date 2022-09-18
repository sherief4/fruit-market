import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/vertical_space.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.title,
    required this.controller,
    this.validator,
    this.maxLines,
  }) : super(key: key);
  final String title;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const VerticalSpace(
          1.0,
        ),
        TextFormField(
          controller: controller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                8.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
