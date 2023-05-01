import 'package:flutter/material.dart';
import 'package:voll_med/components/avatar.dart';
import 'package:voll_med/components/item_historico_medico.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';
import 'package:voll_med/components/logo.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
    String nome = "Joana Magalhães Souza";
    // DateTime date = DateTime(1990, 5, 28);
    // String date2 = date.toString();
    String date3 = "28/05/1990";
    String local = "São Paulo - SP";

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
            const SizedBox(height: 25),
            const Titulo(
              titulo: "Meu perfil",
              color: azul2,
              alignment: Alignment.center,
              fontSize: 24,
              fontWeight: fontWeightBold,
            ),
            const SizedBox(height: 24),
            const SizedBox(
              height: 64,
              child: CircleAvatar(
                backgroundColor: cinza2,
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  const Titulo(
                    titulo: "Informações pessoais",
                    color: azul2,
                    alignment: Alignment.center,
                    fontSize: 18,
                    fontWeight: fontWeightBold,
                  ),
                  const SizedBox(height: 16),
                  Titulo(
                    titulo: nome,
                    color: cinza3,
                    alignment: Alignment.center,
                    fontSize: 16,
                    fontWeight: fontWeightBold,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Titulo(
                      titulo: date3,
                      color: cinza3,
                      alignment: Alignment.center,
                      fontSize: 14,
                      fontWeight: fontWeightRegular,
                    ),
                  ),
                  Titulo(
                    titulo: local,
                    color: cinza3,
                    alignment: Alignment.center,
                    fontSize: 14,
                    fontWeight: fontWeightRegular,
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    height: 1,
                    color: cinza2,
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Titulo(
                          titulo: "Histórico médico",
                          color: azul2,
                          alignment: Alignment.center,
                          fontSize: 18,
                          fontWeight: fontWeightBold,
                        ),
                        SizedBox(height: 16),
                        ItemHistoricoMedico(texto: "Bronquite"),
                        ItemHistoricoMedico(texto: "Sinusite"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
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
