import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter mascaraNumerica(String mascara) {
  final resultadoMascaraNumero = MaskTextInputFormatter(
    mask: mascara,
    filter: {"#": RegExp(r'[0-9]')},
  );
  return resultadoMascaraNumero;
}
