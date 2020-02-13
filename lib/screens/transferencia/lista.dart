import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:transferencias_ios_flutter/components/cardIos.dart';
import 'package:transferencias_ios_flutter/models/transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  final List<Transferencia> _transferencias = List();

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {

  @override
  Widget build(BuildContext context) {
    widget._transferencias.add(Transferencia(100.0, 1000));
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Transferencias'),
        trailing:
            new Container(
              child: new CupertinoButton(
                  child: Icon(Icons.add),
                  onPressed: (){
                    showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text('Card is clicked.'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: const Text('ok'),
                            onPressed: () {
                              Navigator.pop(context, 'ok');
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ),
      ),
      child: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return CardIos(transferencia);
        },
      )
    );
  }
}