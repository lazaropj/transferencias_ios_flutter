import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:transferencias_ios_flutter/models/transferencia.dart';

class CardIos extends StatelessWidget {

  final Transferencia _transferencia;
  final String _imagePath;


  CardIos(this._transferencia, this._imagePath);

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
                image: AssetImage(_imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                "Account: " + _transferencia.numeroConta.toString() + ". Value: " + _transferencia.valor.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ), onPressed: () => print("Click"),
        ),
      );
  }
}