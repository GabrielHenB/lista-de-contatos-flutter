import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  final String contatoId;
  final String contatoNome;
  final String contatoTelefone;
  TelaContato(this.contatoId,this.contatoNome,this.contatoTelefone);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos > ${contatoNome}'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(contatoNome,style: TextStyle(fontSize: 32)),
            ),
            Row(
              children: <Widget>[
                Image.asset('./assets/rananicon.png'),
                Text('Número:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
                Text(contatoTelefone, style: TextStyle(fontSize: 24))
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Center(
              child: Text('Aqui ficaria a bela descrição do contato', style: TextStyle(fontSize: 26, color: Colors.grey)),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
