import 'package:flutter/material.dart';
import 'package:voll_med/assets/styles/fonts.dart';

class Titulo extends StatelessWidget {
  const Titulo({
    super.key,
    required this.titulo,
    required this.color,
    required this.alignment,
  });

  final String titulo;
  final Color color;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Text(
        titulo,
        softWrap: true,
        style: TextStyle(
          color: color,
          fontSize: 24,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
