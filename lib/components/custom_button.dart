import 'package:flutter/material.dart';
import 'package:task_manager/custom/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.all(20),
        onPressed: onPressed,
        color: myBlue,
        textColor: Colors.white,
        child: Text(text));
  }
}
