
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
        required this.text,
        required this.backGroundColor,
        required this.style,
        required this.border, this.onPressed});

  final String text;
  final Color backGroundColor;
  final TextStyle style;
  final BorderRadiusGeometry border;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          fixedSize: const Size.fromHeight(50),
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(borderRadius: border)),
      child: Text(text, style: style),
    );
  }
}
