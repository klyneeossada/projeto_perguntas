// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto;
    
  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10.0),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}