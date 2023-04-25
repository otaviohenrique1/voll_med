import 'dart:io';
import 'package:flutter/material.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/pages/cadastro.dart';

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
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Center(
              child: Container(
                width: 103.07,
                height: 24,
                color: Colors.white,
                child: const Placeholder(
                  child: Center(
                    child: Text("Logo"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 72),
            const Titulo(
              titulo: "Faça login em sua conta",
              color: cinza3,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 48),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CampoTexto(
                    label: "Email",
                    hintText: "Insira seu endereço de email",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Campo vazio";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  CampoTexto(
                    label: "Senha",
                    hintText: "Insira sua senha",
                    controller: _senhaController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Campo vazio";
                      }
                      return null;
                    },
                  ),
                  Botao(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cadastro(),
                        ),
                      );
                    },
                    label: "Entrar",
                    backgroundColor: azul4,
                    fontColor: branco,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
