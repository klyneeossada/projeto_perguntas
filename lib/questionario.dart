import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  const Questionario({
   required this.perguntas,
   required this.perguntaSelecionada,
   required this.responder,
  });


  bool get temPergunta {
    return perguntaSelecionada < perguntas.length;
  } 
 

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>>? respostas = temPergunta ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> : null;
    return Column( 
            children: <Widget>[
              Questao(perguntas[perguntaSelecionada]['texto'] as String),
              ...?respostas?.map((t) => Respostas(t['texto'] as String, () => responder (t['nota'] as int))).toList(),
            ],
    );
  }
}