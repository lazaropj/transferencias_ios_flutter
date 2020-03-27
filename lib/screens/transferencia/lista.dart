import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:transferencias_ios_flutter/components/cardIos.dart';
import 'package:transferencias_ios_flutter/models/transferencia.dart';

import 'package:dart_random_choice/dart_random_choice.dart';

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

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticallyImplyLeading: false,
          middle: Text('Transferencias'),
          trailing: new Container(
            child: new CupertinoButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.pushNamed(context, "formulario")
                      .then(
                          (transferencia) => _atualiza(transferencia)
                  );
                }
            ),
          ),
        ),
        child: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = widget._transferencias[indice];
            return ItemTransferencia(transferencia);
          },
        ));
  }

  void _atualiza(Transferencia transferenciaRecebida) {
    if (transferenciaRecebida != null) {
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
    }
  }

}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;
  final _listImages = ['assets/transferencia1.jpg','assets/transferencia2.jpg','assets/transferencia3.jpg'];

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return CardIos(_transferencia, randomChoice(_listImages));
  }
}
