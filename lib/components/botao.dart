import 'package:flutter/material.dart';
import 'package:voll_med/assets/styles/fonts.dart';

class Botao extends StatelessWidget {
  final void Function() onPressed;
  final Color fontColor;
  final Color backgroundColor;
  final String label;

  const Botao({
    super.key,
    required this.onPressed,
    required this.fontColor,
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(8),
        minimumSize: const Size.fromHeight(33),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: fontColor,
          fontSize: 16,
          fontFamily: fontFamily,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
