// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String resposta;
  final Function () onSelecao;
  const Respostas(this.resposta, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.yellow,
          backgroundColor: Colors.black
        ),
        onPressed: onSelecao,
        child: Text(resposta),
                ),
    );
  }
}