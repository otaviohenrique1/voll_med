import 'package:flutter/material.dart';
import 'package:voll_med/styles/colors.dart';

class TesteTab extends StatefulWidget {
  const TesteTab({super.key});

  @override
  State<TesteTab> createState() => _TesteTabState();
}

class _TesteTabState extends State<TesteTab> {
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

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Início',
      style: optionStyle,
    ),
    Text(
      'Consultas',
      style: optionStyle,
    ),
    Text(
      'Explorar',
      style: optionStyle,
    ),
    Text(
      'Perfil',
      style: optionStyle,
    ),
  ];

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
          child: Center(
            child: _widgetOptions.elementAt(_selectedTabIndex),
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
