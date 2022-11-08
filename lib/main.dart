// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'questionario.dart';
import 'resultado.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatefulWidget {
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _totalPontos = 0;

  void _responder(int nota) {
    if(temPergunta) {
      setState(() {
      _perguntaSelecionada++;
      _totalPontos += nota;
    });     
   }
  }

  void _reiniciarQuest (){
    setState(() {
      _perguntaSelecionada = 0;
      _totalPontos = 0;
    });
  }

  bool get temPergunta {
    return _perguntaSelecionada < _perguntas.length;
  } 

  final _perguntas = const [
    {
      'texto': 'Qual a sua cor favorita?',
      'respostas': [
        {'texto': 'Verde', 'nota': 10},
        {'texto': 'Amarelo', 'nota': 5},
        {'texto': 'Vermelho', 'nota': 3},
        {'texto': 'Azul', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto' : 'Peixe', 'nota': 10},
        {'texto' : 'Gato', 'nota': 5},
        {'texto' : 'Passarinho', 'nota': 3},
        {'texto' : 'Cachorro', 'nota': 1},
      ],
    },
    {
      'texto': 'Qual o melhor time?',
      'respostas': [
        {'texto': 'Corinthians', 'nota': 10},
        {'texto': 'Palmeiras', 'nota': 5},
        {'texto': 'São Paulo', 'nota': 3},
        {'texto': 'Santos', 'nota': 1},
      ],
    },
  ];

    @override
    Widget build(BuildContext context) {

      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPergunta ? 
           Questionario(
            perguntaSelecionada: _perguntaSelecionada,
            perguntas: _perguntas,
            responder: _responder,
          )
             : Resultado(_totalPontos, _reiniciarQuest),
      ),
      );
  }

}