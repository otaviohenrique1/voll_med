import 'package:flutter/material.dart';
import 'package:voll_med/components/avatar.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/styles/fonts.dart';

class Medico extends StatelessWidget {
  const Medico({
    super.key,
    required this.nome,
    required this.cargo,
    required this.data,
    required this.backgroundColor,
    required this.botaoOnPressed,
    required this.botaoLabel,
    this.margin,
  });

  final String nome;
  final String cargo;
  final String data;
  final Color backgroundColor;
  final void Function() botaoOnPressed;
  final String botaoLabel;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(2, 2),
          ),
        ],
        border: Border.all(
          width: 1,
          color: cinza1,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Avatar(),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Titulo(
                    titulo: nome,
                    color: cinza3,
                    alignment: Alignment.center,
                    fontSize: 16,
                    fontWeight: fontWeightBold,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Titulo(
                      titulo: cargo,
                      color: cinza3,
                      alignment: Alignment.center,
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                    ),
                  ),
                  Titulo(
                    titulo: data,
                    color: cinza3,
                    alignment: Alignment.center,
                    fontSize: 14,
                    fontWeight: fontWeightRegular,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Botao(
            onPressed: botaoOnPressed,
            fontColor: branco,
            label: botaoLabel,
            backgroundColor: azul3,
          ),
        ],
      ),
    );
  }
}
