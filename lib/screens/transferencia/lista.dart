import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Transferencias'),
        trailing: Icon(CupertinoIcons.add),
      ),
      backgroundColor: Colors.blueAccent,
      child: Center(
        child: Text('Testando'),
      )
    );
  }
}