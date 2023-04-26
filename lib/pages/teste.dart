import 'package:flutter/material.dart';

class CheckBoxModel {
  CheckBoxModel({required this.texto, this.checked = false});

  String texto;
  bool checked;
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key, required this.item});

  final CheckBoxModel item;

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      onChanged: (bool? value) {
        setState(() {
          widget.item.checked = value!;
        });
      },
    );
  }
}

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

class App2 extends StatelessWidget {
  App2({super.key});

  /* Uma lista de itens que podem estar vindo da sua API */
  final List<CheckBoxModel> itens = [
    CheckBoxModel(texto: "Matheus"),
    CheckBoxModel(texto: "Renato"),
    CheckBoxModel(texto: "Julio"),
    CheckBoxModel(texto: "Miguel"),
    CheckBoxModel(texto: "Murilo"),
    CheckBoxModel(texto: "Leticia"),
    CheckBoxModel(texto: "Nadir"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView.builder(
            itemCount: itens.length,
            itemBuilder: (_, int index) {
              return CheckboxWidget(item: itens[index]);
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.apps),
            onPressed: listarApenasMarcados,
          )),
    );
  }

  /* Aqui é como separamos apenas os registros marcados */
  void listarApenasMarcados() {
    List<CheckBoxModel> itensMarcados =
        List.from(itens.where((item) => item.checked));

    itensMarcados.forEach((item) {
      print(item.texto);
    });
  }
}
