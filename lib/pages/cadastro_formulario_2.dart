import 'package:flutter/material.dart';
import 'package:voll_med/pages/cadastro_formulario_1.dart';
import 'package:voll_med/pages/cadastro_formulario_3.dart';
import 'package:voll_med/utils/validators.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';
import 'package:voll_med/utils/helpers.dart';

class CadastroFormulario2 extends StatefulWidget {
  const CadastroFormulario2({super.key});

  @override
  State<CadastroFormulario2> createState() => _CadastroFormulario2State();
}

class _CadastroFormulario2State extends State<CadastroFormulario2> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _cepController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _complementoController = TextEditingController();
  final TextEditingController _telefoneController = TextEditingController();

  final _numeroCEP = mascaraNumerica('#####-###');
  final _numeroCelularFormatter = mascaraNumerica('(##)#####-####');

  @override
  void dispose() {
    _cepController.dispose();
    _enderecoController.dispose();
    _numeroController.dispose();
    _complementoController.dispose();
    _telefoneController.dispose();
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
                    validator: validaCampoVazio,
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
                    validator: validaCampoVazio,
                  ),
                  const SizedBox(height: 24),
                  Botao(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CadastroFormulario1(),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CadastroFormulario3(),
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
