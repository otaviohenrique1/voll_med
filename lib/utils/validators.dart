import 'package:flutter/material.dart';

String? validaNome(value) {
  if (value == null || value.isEmpty) {
    return "Campo vazio";
  }
  return null;
}

String? validaEmail(value) {
  if (value == null || value.isEmpty) {
    return "Campo vazio";
  }
  return null;
}

String? validaSenha(value) {
  if (value == null || value.isEmpty) {
    return "Campo vazio";
  }
  return null;
}

String? validaRepitaSenha(
    String? value, TextEditingController senhaController) {
  if (value == null || value.isEmpty) {
    return "Campo vazio";
  } else if (senhaController.text != value) {
    return "Senhas não coincidem";
  }
  return null;
}
