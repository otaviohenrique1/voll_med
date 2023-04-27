import 'package:flutter/material.dart';
import 'package:voll_med/components/campo_checkbox.dart';
import 'package:voll_med/pages/cadastro_formulario_2.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';

class CadastroFormulario3 extends StatefulWidget {
  const CadastroFormulario3({super.key});

  @override
  State<CadastroFormulario3> createState() => _CadastroFormulario3State();
}

class _CadastroFormulario3State extends State<CadastroFormulario3> {
  var formKey = GlobalKey<FormState>();

  final List<CheckboxModel> itens = [
    CheckboxModel(texto: "Sulamerica"),
    CheckboxModel(texto: "Unimed"),
    CheckboxModel(texto: "Bradesco"),
    CheckboxModel(texto: "Amil"),
    CheckboxModel(texto: "Biosaúde"),
    CheckboxModel(texto: "Biovida"),
    CheckboxModel(texto: "Outros"),
    CheckboxModel(texto: "Não tenho plano"),
  ];

  int indiceTab = 0;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    List<CheckboxModel> itensMarcados =
        List.from(itens.where((item) => item.checked));

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const Logo(),
            Center(
              child: Text(
                "[$indiceTab]",
                style: const TextStyle(fontSize: 20),
              ),
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const Titulo(
                    titulo: "Insira alguns dados básicos:",
                    color: cinza3,
                    alignment: Alignment.center,
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Selecione os planos :",
                      style: TextStyle(
                        color: azul3,
                        fontSize: 16,
                        fontFamily: fontFamily,
                        fontWeight: fontWeightBold,
                      ),
                    ),
                  ),
                  CampoCheckbox(item: itens[0]),
                  CampoCheckbox(item: itens[1]),
                  CampoCheckbox(item: itens[2]),
                  CampoCheckbox(item: itens[3]),
                  CampoCheckbox(item: itens[4]),
                  CampoCheckbox(item: itens[5]),
                  CampoCheckbox(item: itens[6]),
                  CampoCheckbox(item: itens[7]),
                  const SizedBox(height: 24),
                  Botao(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CadastroFormulario2(),
                        ),
                      );
                    },
                    label: "Voltar",
                    backgroundColor: cinza2,
                    fontColor: branco,
                  ),
                  const SizedBox(height: 24),
                  Botao(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        //   Navigator.pop(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => const Login(),
                        //     ),
                        //   );
                      }
                      setState(() {
                        if (indiceTab == 2) {
                          indiceTab = 0;
                        } else {
                          indiceTab += 1;
                        }
                      });
                    },
                    label: "Avançar",
                    backgroundColor: azul4,
                    fontColor: branco,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
