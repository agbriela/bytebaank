import 'package:bytebank/componentes/item_transferencia.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

class ListaTransferencias extends StatefulWidget {
  // informações de dentro das caixinhas

  final List<Transferencia> transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return EstadoListaTransferencias();
  }
}

class EstadoListaTransferencias extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar( title: Text('Transferências')),
      body: ListView.builder(
        itemCount: widget.transferencias.length,
        itemBuilder: (BuildContext context, int index) {
          final Transferencia transferencia = widget.transferencias[index];
          return ItensTransferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Future<Transferencia> futuro =
          Navigator.push(context, MaterialPageRoute(builder: (cxt) {
            return FormularioTransferencia();
          }));

          futuro.then((transferenciaRecebida) {
            if (Transferencia != null) {
              debugPrint(
                  'Transferencia realizada no FUTURO: $transferenciaRecebida');

              Future.delayed(Duration(seconds: 5)).then((value) {
                setState(() {
                  widget.transferencias.add(transferenciaRecebida);
                  debugPrint("Lista atualizada: " +
                      widget.transferencias.length.toString());
                });
              });
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

