import 'package:flutter/material.dart';
import 'package:my_flutter_project/resposta.dart';
import './questao.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      this._perguntaSelecionada++;
      if (this._perguntaSelecionada > 1) {
        this._perguntaSelecionada = 0;
      }
    });
    print('Pergunta selecionada é $_perguntaSelecionada');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é seu suco favorito?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[this._perguntaSelecionada]),
            Resposta('Resposta 001', _responder),
            Resposta('Resposta 002', _responder)
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
