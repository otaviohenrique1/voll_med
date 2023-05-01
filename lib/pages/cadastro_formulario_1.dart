import 'package:flutter/material.dart';
import 'package:voll_med/pages/cadastro_formulario_2.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/utils/validators.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';

class CadastroFormulario1 extends StatefulWidget {
  const CadastroFormulario1({super.key});

  @override
  State<CadastroFormulario1> createState() => _CadastroFormulario1State();
}

class _CadastroFormulario1State extends State<CadastroFormulario1> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _repitaSenhaController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _repitaSenhaController.dispose();
    super.dispose();
  }

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
                    fontSize: 24,
                    fontWeight: fontWeightBold,
                  ),
                  const SizedBox(height: 24),
                  CampoTexto(
                    label: "Nome",
                    hintText: "Digite seu nome completo",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    validator: validaCampoVazio,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  CampoTexto(
                    label: "Email",
                    hintText: "Insira seu endereço de email",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: validaEmail,
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  CampoTexto(
                    label: "Crie uma senha",
                    hintText: "Insira sua senha",
                    controller: _senhaController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: validaSenha,
                  ),
                  const SizedBox(height: 16),
                  CampoTexto(
                    label: "Repita a senha",
                    hintText: "Insira sua senha",
                    controller: _repitaSenhaController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (value) =>
                        validaRepitaSenha(value, _senhaController),
                  ),
                  const SizedBox(height: 24),
                  Botao(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CadastroFormulario2(),
                          ),
                        );
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
