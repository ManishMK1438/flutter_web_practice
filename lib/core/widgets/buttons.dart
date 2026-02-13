import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final ButtonStyle? buttonStyle;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.buttonStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: buttonStyle,
      child: Text(text),
    );
  }
}
