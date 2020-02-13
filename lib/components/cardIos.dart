import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:transferencias_ios_flutter/models/transferencia.dart';

class CardIos extends StatelessWidget {

  final Transferencia _transferencia;

  CardIos(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return
       SafeArea(
        child: CupertinoButton(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/mindful.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                _transferencia.valor.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          onPressed: () {
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
          },
        ),
      );
  }
}