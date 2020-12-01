import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItensTransferencia extends StatelessWidget {
  // as caixinhas que separam cada transferência
  Transferencia transferencia;

  ItensTransferencia(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on, color: Colors.yellow),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.conta.toString()),
      ),
    );
  }
}

