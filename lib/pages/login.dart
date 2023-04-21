import 'package:flutter/material.dart';
import 'package:voll_med/pages/cadastro.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        // backgroundColor: Theme.of(context).colorScheme.primary,
        // title: const Text("Login"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Email",
                          ),
                        ),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: "Insira seu endereço de email",
                            hintStyle: TextStyle(fontSize: 16),
                          ),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cadastro(),
                        ),
                      );
                    },
                    child: const Text('Avançar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
