import 'package:flutter/material.dart';
import './dummy_contatos.dart';
import './moldeContato.dart';

//Monta a tela principal.
class ContatosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: DUMMY_CONTATOS.map((mapaCont) =>
            MoldeContato(mapaCont.id,mapaCont.nome,mapaCont.telefone)).toList(),



      )
    );
  }
}
