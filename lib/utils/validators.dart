import 'package:flutter/material.dart';

bool validaValor(String? value) {
  return (value == null || value.isEmpty);
}

String? validaCampoVazio(String? value) {
  if (validaValor(value)) {
    return "Campo vazio";
  }
  return null;
}

String? validaEmail(String? value) {
  if (validaValor(value)) {
    return "Campo vazio";
  }
  return null;
}

String? validaSenha(String? value) {
  if (validaValor(value)) {
    return "Campo vazio";
  }
  return null;
}

String? validaRepitaSenha(
    String? value, TextEditingController senhaController) {
  if (validaValor(value)) {
    return "Campo vazio";
  } else if (senhaController.text != value) {
    return "Senhas não coincidem";
  }
  return null;
}
