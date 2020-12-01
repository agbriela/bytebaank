import 'package:bytebank/componentes/campo_texto.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  FormularioTransferenciaState createState() => FormularioTransferenciaState();
}
class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController controladorDoCampoConta = TextEditingController();

  final TextEditingController controladorDoCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ByteBank"),
        ),
        body: SingleChildScrollView(
          //scroll bar
          child: Column(
            children: <Widget>[
              CampoTexto(
                controlador: controladorDoCampoConta,
                dica: "0000",
                rotulo: 'Conta',
              ),
              CampoTexto(
                  controlador: controladorDoCampoValor,
                  rotulo: "Valor",
                  dica: '0.00',
                  icone: Icons.monetization_on),
              RaisedButton(
                onPressed: () => criaTransferencia(context), //lambida
                child: Text('Adicionar'),
              ),
            ],
          ),
        ));

  }

  void criaTransferencia(BuildContext context) {
    debugPrint("Clicou em Adiciona ");

    double valor = double.tryParse(controladorDoCampoValor.text);
    int conta = int.tryParse(controladorDoCampoConta.text);

    if (conta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, conta);
      debugPrint("Transferência Criada: $transferenciaCriada");
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
