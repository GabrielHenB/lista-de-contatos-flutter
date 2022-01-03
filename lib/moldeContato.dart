import 'package:flutter/material.dart';
import './telaContato.dart';

class MoldeContato extends StatelessWidget {
  final String id;
  final String nome;
  final String telefone;
  MoldeContato(this.id,this.nome,this.telefone);

  void selecionarContato(BuildContext ctx){
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_){
          return TelaContato(id,nome,telefone);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selecionarContato(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(11),
        child: Row(
          children: <Widget>[
            Image.asset('./assets/rananicon.png',fit: BoxFit.contain),
            Column(
              children: <Widget>[
                Text(nome, textAlign: TextAlign.left ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text('Num: ${telefone}', textAlign: TextAlign.left, style: TextStyle(color: Colors.grey))
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
        ),
        decoration: BoxDecoration(
            color: Colors.white
        ),
      ),
    );
  }
}
