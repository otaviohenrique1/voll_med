import 'package:flutter/material.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/components/medico.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/utils/validators.dart';

class Busca extends StatefulWidget {
  const Busca({super.key});

  @override
  State<Busca> createState() => _BuscaState();
}

class _BuscaState extends State<Busca> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _especialidadeController =
      TextEditingController();
  final TextEditingController _localizacaoController = TextEditingController();

  @override
  void dispose() {
    _especialidadeController.dispose();
    _localizacaoController.dispose();
    super.dispose();
  }

  int _selectedTabIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    Container(
                      decoration: BoxDecoration(
                        color: branco,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            spreadRadius: 0,
                            blurRadius: 6,
                            offset: Offset(2, 2),
                          ),
                        ],
                        border: Border.all(
                          width: 1,
                          color: cinza1,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          CampoTexto(
                            hintText: "Digite a especialidade ",
                            controller: _especialidadeController,
                            exibeLabel: false,
                            keyboardType: TextInputType.text,
                            validator: validaCampoVazio,
                            obscureText: false,
                          ),
                          CampoTexto(
                            hintText: "Digite sua localização",
                            controller: _localizacaoController,
                            exibeLabel: false,
                            keyboardType: TextInputType.text,
                            validator: validaCampoVazio,
                            obscureText: false,
                          ),
                          Botao(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                            },
                            label: "Buscar",
                            backgroundColor: azul4,
                            fontColor: branco,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Titulo(
                titulo: "Resultado da busca",
                color: azul2,
                alignment: Alignment.center,
                fontSize: 24,
                fontWeight: fontWeightBold,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: Column(
                  children: [
                    MedicoBusca(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    MedicoBusca(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    MedicoBusca(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    MedicoBusca(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    MedicoBusca(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Consultas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        currentIndex: _selectedTabIndex,
        onTap: _onItemTapped,
        iconSize: 24,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        backgroundColor: azul3,
        selectedItemColor: azul2,
        unselectedItemColor: branco,
        selectedFontSize: 16,
        unselectedFontSize: 16,
      ),
    );
  }
}
