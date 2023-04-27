import 'package:flutter/material.dart';
import 'package:voll_med/components/campo_checkbox.dart';
import 'package:voll_med/pages/cadastro_formulario_2.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
