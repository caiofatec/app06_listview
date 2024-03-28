// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../model/contato.dart';

class PrincipalView extends StatefulWidget {
  const PrincipalView({super.key});

  @override
  State<PrincipalView> createState() => _PrincipalViewState();
}

class _PrincipalViewState extends State<PrincipalView> {
  List<Contato> dados = [];
  @override
  void initState() {
    dados.add(Contato('João da Silva', 'joao@email.com'));
    dados.add(Contato('José Antônio', 'jose@email.com'));
    dados.add(Contato('Ana Maria', 'ana@email.com'));
    dados.add(Contato('Maria Antônia', 'maria@email.com'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: dados.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text(dados[index].nome),
              subtitle: Text(
                dados[index].email,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
