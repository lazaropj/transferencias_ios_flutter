import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:transferencias_ios_flutter/screens/transferencia/lista.dart';



void main() {
  return runApp(BytebankApp());
}

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        home: ListaTransferencias()
    );
  }
}