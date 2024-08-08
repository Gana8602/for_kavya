import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final void Function()? onTap;
  const SubmitButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 80,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Colors.blueAccent),
        child: const Center(
          child: Text(
            "Submit",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
