import 'package:flutter/material.dart';
import 'package:voll_med/components/campo_checkbox.dart';
import 'package:voll_med/components/campo_texto.dart';
import 'package:voll_med/pages/cadastro_formulario_2.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';
import 'package:voll_med/utils/validators.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        child: ListView(
          children: [
            const SizedBox(height: 16),
            const Logo(),
            const SizedBox(height: 24),
            const Titulo(
              titulo: "Boas-vindas!",
              color: azul2,
              alignment: Alignment.centerLeft,
            ),
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
                  const SizedBox(height: 32),
                ],
              ),
            ),
            const Titulo(
              titulo: "Depoimentos",
              color: azul3,
              alignment: Alignment.center,
            ),
            const SizedBox(height: 32),
            const Column(
              children: [
                Depoimento(
                  texto:
                      "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.",
                  autor: "Júlio",
                  idade: "40 anos",
                  localizacao: "São Paulo/SP.",
                ),
                Depoimento(
                  texto:
                      "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.",
                  autor: "Júlio",
                  idade: "40 anos",
                  localizacao: "São Paulo/SP.",
                ),
                Depoimento(
                  texto:
                      "Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores.",
                  autor: "Júlio",
                  idade: "40 anos",
                  localizacao: "São Paulo/SP.",
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
            backgroundColor: azul3,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Consultas',
            backgroundColor: azul3,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
            backgroundColor: azul3,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            backgroundColor: azul3,
          ),
        ],
        currentIndex: _selectedTabIndex,
        selectedItemColor: azul2,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Depoimento extends StatelessWidget {
  const Depoimento({
    super.key,
    required this.texto,
    required this.autor,
    required this.idade,
    required this.localizacao,
  });

  final String texto;
  final String autor;
  final String idade;
  final String localizacao;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          texto,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: cinza2,
            fontSize: 16,
            fontWeight: fontWeightRegular,
            fontFamily: fontFamily,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "$autor, $idade anos, $localizacao",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: cinza3,
              fontSize: 16,
              fontWeight: fontWeightBold,
              fontFamily: fontFamily,
            ),
          ),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
