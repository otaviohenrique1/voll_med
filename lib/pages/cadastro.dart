import 'package:flutter/material.dart';
import 'package:voll_med/pages/login.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/utils/validators.dart';

import '../components/botao.dart';
import '../components/campo_texto.dart';
import '../components/titulo.dart';
import '../styles/colors.dart';
import '../components/logo.dart';
import '../utils/helpers.dart';

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

  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _complementoController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  final _numeroCEP = mascaraNumerica('#####-###');
  final _numeroCelularFormatter = mascaraNumerica('(##)#####-####');

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _repitaSenhaController.dispose();
    _cepController.dispose();
    _enderecoController.dispose();
    _numeroController.dispose();
    _complementoController.dispose();
    _telefoneController.dispose();
    super.dispose();
  }

  bool isChecked = false;

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
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      const Titulo(
                        titulo: "Insira alguns dados básicos:",
                        color: cinza3,
                        alignment: Alignment.center,
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
                    ],
                  ),
/**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */
                  Column(
                    children: [
                      const SizedBox(height: 24),
                      const Titulo(
                        titulo: "Agora, mais alguns dados sobre você:",
                        color: cinza3,
                        alignment: Alignment.center,
                      ),
                      const SizedBox(height: 24),
                      CampoTexto(
                        label: "CEP",
                        hintText: "Insira seu CEP",
                        controller: _cepController,
                        exibeLabel: true,
                        keyboardType: TextInputType.number,
                        validator: validaCampoVazio,
                        obscureText: false,
                        inputFormatters: [_numeroCEP],
                      ),
                      const SizedBox(height: 16),
                      CampoTexto(
                        label: "Endereço",
                        hintText: "Insira seu endereço",
                        controller: _enderecoController,
                        exibeLabel: true,
                        keyboardType: TextInputType.text,
                        validator: validaCampoVazio,
                        obscureText: false,
                      ),
                      const SizedBox(height: 16),
                      CampoTexto(
                        label: "Número",
                        hintText: "Insira seu número",
                        controller: _numeroController,
                        exibeLabel: true,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        validator: validaSenha,
                      ),
                      const SizedBox(height: 16),
                      CampoTexto(
                        label: "Complemento",
                        hintText: "Insira seu complemento",
                        controller: _complementoController,
                        exibeLabel: true,
                        keyboardType: TextInputType.text,
                        obscureText: false,
                        validator: (value) =>
                            validaRepitaSenha(value, _senhaController),
                      ),
                      const SizedBox(height: 16),
                      CampoTexto(
                        label: "Telefone",
                        hintText: "(00) 00000-0000",
                        controller: _telefoneController,
                        exibeLabel: true,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        inputFormatters: [_numeroCelularFormatter],
                        validator: (value) =>
                            validaRepitaSenha(value, _senhaController),
                      ),
                    ],
                  ),
/**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */
                  Column(
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
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
/**
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 */
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
                    label: "Voltar",
                    backgroundColor: cinza2,
                    fontColor: branco,
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
