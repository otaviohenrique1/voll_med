import 'package:flutter/material.dart';
import 'package:voll_med/pages/login.dart';
import 'package:voll_med/utils/validators.dart';

import '../components/botao.dart';
import '../components/campo_texto.dart';
import '../components/titulo.dart';
import '../styles/colors.dart';
import '../components/logo.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
            const SizedBox(height: 24),
            const Titulo(
              titulo: "Insira alguns dados básicos:",
              color: cinza3,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 24),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CampoTexto(
                    label: "Nome",
                    hintText: "Digite seu nome completo",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.text,
                    validator: validaNome,
                  ),
                  const SizedBox(height: 16),
                  CampoTexto(
                    label: "Email",
                    hintText: "Insira seu endereço de email",
                    controller: _emailController,
                    exibeLabel: true,
                    keyboardType: TextInputType.emailAddress,
                    validator: validaEmail,
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
                            builder: (context) => const Login(),
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
