class Transferencia {
  // simplifica o valor e a conta da trasferencia
  double valor;
  int conta;

  @override
  String toString() {
    return 'Transferencia{conta: $conta, valor: $valor}';
  }

  Transferencia(this.valor, this.conta);
}
