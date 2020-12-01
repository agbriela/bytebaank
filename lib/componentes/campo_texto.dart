import 'package:flutter/material.dart';


class CampoTexto extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  CampoTexto({this.controlador, this.rotulo, this.dica, this.icone});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo, // nome do campo
          hintText: dica, // fundinho com números para exemplo
        ),
      ),
    );
  }
}
