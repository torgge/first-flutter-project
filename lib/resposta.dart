import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() onSelecao;

  Resposta(this._texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
        child: Text(_texto),
        onPressed: this.onSelecao,
      ),
    );
  }
}
