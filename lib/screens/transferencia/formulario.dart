import 'package:flutter/cupertino.dart';
import 'package:transferencias_ios_flutter/models/transferencia.dart';


class FormularioForm extends StatefulWidget {
  @override
  _FormularioStateState createState() => _FormularioStateState();
}

class _FormularioStateState extends State<FormularioForm> {
  final TextEditingController _accountNumberControllerr = TextEditingController();
  final TextEditingController _valueControllerr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("New Contact"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  CupertinoTextField(
                    controller: _accountNumberControllerr,
                    placeholder: "Account Number",
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  CupertinoTextField(
                    controller: _valueControllerr,
                    placeholder: "Value",
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            CupertinoButton(
              onPressed: () {
                final int accountNumber = int.tryParse(_accountNumberControllerr.text);
                final double value = double.tryParse(_valueControllerr.text);
                final Transferencia newTransferencia = Transferencia(value, accountNumber);
                Navigator.pop(context, newTransferencia);
              },
              child: Text("Create"),
            )
          ],
        ),
      )
    );
  }
}
