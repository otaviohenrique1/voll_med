import 'package:flutter/material.dart';
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 33, 61, 1)),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
