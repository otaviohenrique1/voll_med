import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatelessWidget {
  const CampoTexto({
    super.key,
    required this.controller,
    required this.hintText,
    required this.exibeLabel,
    this.label,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.initialValue,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String? label;
  final String hintText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final bool exibeLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Visibility(
            visible: exibeLabel,
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  (label == null) ? "" : label!,
                  style: const TextStyle(
                    color: Color.fromRGBO(11, 59, 96, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  // color: Color.fromRGBO(248, 248, 248, 1),
                  spreadRadius: 0,
                  blurRadius: 6,
                  offset: const Offset(2, 2),
                ),
              ],
              border: Border.all(
                width: 1,
                color: Colors.grey.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(fontSize: 16),
                border: InputBorder.none,
              ),
              style: const TextStyle(fontSize: 16),
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
