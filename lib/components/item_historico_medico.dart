import 'package:flutter/material.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/styles/fonts.dart';

class ItemHistoricoMedico extends StatelessWidget {
  const ItemHistoricoMedico({
    super.key,
    required this.texto,
  });

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.circle,
              size: 6,
            ),
            const SizedBox(width: 8),
            Titulo(
              titulo: texto,
              color: cinza3,
              alignment: Alignment.center,
              fontSize: 16,
              fontWeight: fontWeightBold,
            ),
          ],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
