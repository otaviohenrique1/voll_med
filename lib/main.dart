import 'package:flutter/material.dart';
// import 'package:voll_med/pages/teste_tab.dart';
// import 'package:voll_med/pages/busca.dart';
// import 'package:voll_med/pages/minhas_consultas.dart';
// import 'package:voll_med/pages/perfil.dart';
// import 'package:voll_med/pages/homepage.dart';
// import 'package:voll_med/pages/cadastro.dart';
import 'package:voll_med/pages/login.dart';

void main() {
  runApp(const VollMed());
}

class VollMed extends StatelessWidget {
  const VollMed({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(0, 33, 61, 1),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(0, 33, 61, 1),
        ),
        useMaterial3: true,
      ),
      home: const Login(),
      // home: const Cadastro(),
      // home: const Homepage(),
      // home: const Perfil(),
      // home: const MinhasConsultas(),
      // home: const Busca(),
      // home: const TesteTab(),
    );
  }
}
