import 'package:flutter/cupertino.dart';
import 'package:transferencias_ios_flutter/screens/transferencia/formulario.dart';
import 'package:transferencias_ios_flutter/screens/transferencia/lista.dart';



void main() {
  return runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      routes: {
        '/': (_) => ListaTransferencias(),
        'formulario': (_) => FormularioForm(),
      },
    );
  }
}