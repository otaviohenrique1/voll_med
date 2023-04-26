import 'package:flutter/material.dart';
import 'package:voll_med/components/botao_texto.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/pages/cadastro.dart';
import 'package:voll_med/styles/fonts.dart';

import '../components/logo.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  // String _erroEmail = "";
  // String _erroSenha = "";

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        // title: const Text("Login"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        // padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(height: 72),
            // const SizedBox(height: 122),
            const Logo(),
            const SizedBox(height: 48),
            // const SizedBox(height: 72),
            const Titulo(
              titulo: "Faça login em sua conta",
              color: cinza3,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 48),
            Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  CampoTexto(
                    label: "Email",
                    hintText: "Insira seu endereço de email",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: validaEmail,
                  ),
                  const SizedBox(height: 24),
                  CampoTexto(
                    label: "Senha",
                    hintText: "Insira sua senha",
                    controller: _senhaController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: validaSenha,
                  ),
                  const SizedBox(height: 24),
                  Botao(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                      /* else {
                        setState(() {
                          _erroEmail = validaEmail(_emailController.text)!;
                          _erroSenha = validaSenha(_senhaController.text)!;
                        });
                      } */
                    },
                    label: "Entrar",
                    backgroundColor: azul4,
                    fontColor: branco,
                  ),
                  BotaoTexto(
                    onPressed: () {},
                    label: "Esqueceu sua senha?",
                    fontColor: azul3,
                    decoration: TextDecoration.underline,
                    decorationColor: azul3,
                    fontWeight: fontWeightRegular,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Ainda não tem conta?",
                        style: TextStyle(
                          color: cinza3,
                          fontSize: 16,
                          fontFamily: fontFamily,
                          fontWeight: fontWeightRegular,
                        ),
                      ),
                      BotaoTexto(
                        label: "Faça seu cadastro!",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cadastro(),
                            ),
                          );
                        },
                        fontColor: azul2,
                        fontWeight: fontWeightBold,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
