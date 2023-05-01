import 'package:flutter/material.dart';
import 'package:voll_med/components/botao.dart';
import 'package:voll_med/components/medico.dart';
import 'package:voll_med/styles/fonts.dart';
import 'package:voll_med/components/titulo.dart';
import 'package:voll_med/styles/colors.dart';

class MinhasConsultas extends StatefulWidget {
  const MinhasConsultas({super.key});

  @override
  State<MinhasConsultas> createState() => _MinhasConsultasState();
}

class _MinhasConsultasState extends State<MinhasConsultas> {
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
              const SizedBox(height: 23),
              const Titulo(
                titulo: "Minhas consultas",
                color: azul2,
                alignment: Alignment.center,
                fontSize: 24,
                fontWeight: fontWeightBold,
              ),
              const SizedBox(height: 24),
              Botao(
                onPressed: () {},
                fontColor: branco,
                label: "Agendar outra consulta",
                backgroundColor: azul3,
              ),
              const SizedBox(height: 24),
              const Titulo(
                titulo: "Próximas consultas",
                color: azul2,
                alignment: Alignment.centerLeft,
                fontSize: 18,
                fontWeight: fontWeightBold,
              ),
              const SizedBox(height: 24),
              Medico(
                nome: "Dra. Ana Lúcia",
                cargo: "Angiologista",
                data: "03/03/2023",
                backgroundColor: branco,
                botaoLabel: "Cancelar",
                botaoOnPressed: () {},
              ),
              const SizedBox(height: 24),
              const Divider(
                height: 1,
                color: cinza2,
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Titulo(
                      titulo: "Consultas passadas",
                      color: azul2,
                      alignment: Alignment.centerLeft,
                      fontSize: 18,
                      fontWeight: fontWeightBold,
                    ),
                    const SizedBox(height: 16),
                    Medico(
                      nome: "Dra. Ana Lúcia",
                      cargo: "Angiologista",
                      data: "01/02/2022",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    Medico(
                      nome: "Dr. Paulo Matos",
                      cargo: "Otorrinolaringologista",
                      data: "09/08/2022",
                      backgroundColor: azul5,
                      botaoLabel: "Agendar consulta",
                      botaoOnPressed: () {},
                      margin: const EdgeInsets.only(bottom: 24),
                    ),
                    Medico(
                      nome: "Dra. Mariana Luz",
                      cargo: "Mastologista",
                      data: "07/10/2022",
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
