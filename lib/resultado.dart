import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final void Function() reiniciarQuest;

  const Resultado(this.pontuacao, this.reiniciarQuest);

  String get frasePontos{
    
    if (pontuacao < 8) {
      return 'Parabéns\n Sua pontuação: $pontuacao';
    } else if(pontuacao < 12){
      return 'Muito bom\n Sua pontuação: $pontuacao';
    } else if(pontuacao < 16){
      return 'Impressionante!\n Sua pontuação: $pontuacao';
    } else {
      return 'Pontuação dos mestres\n Sua pontuação: $pontuacao';
    }
    }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
              child: Text (frasePontos,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center
                ),
              ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.white),
          onPressed: reiniciarQuest,
          child: const Text('Reiniciar?'),
          ),
      ],
    );
  }
}