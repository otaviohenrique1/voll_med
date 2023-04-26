import 'package:flutter/material.dart';

class CheckboxModel {
  CheckboxModel({required this.texto, this.checked = false});

  String texto;
  bool checked;
}

class CampoCheckbox extends StatefulWidget {
  const CampoCheckbox({super.key, required this.item});

  final CheckboxModel item;

  @override
  State<CampoCheckbox> createState() => _CampoCheckboxState();
}

class _CampoCheckboxState extends State<CampoCheckbox> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (value) {
        setState(() {
          // bool validaValor = (value == null) ? false : true;
          widget.item.checked = value!;
        });
      },
    );
  }
}
