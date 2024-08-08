import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final bool obsecure;
  final String lable;
  final String? Function(String?)? validator;
  const InputField(
      {super.key,
      required this.controller,
      required this.obsecure,
      required this.lable,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obsecure,
      validator: validator,
      decoration: InputDecoration(
          label: Text(lable), border: const OutlineInputBorder()),
    );
  }
}
