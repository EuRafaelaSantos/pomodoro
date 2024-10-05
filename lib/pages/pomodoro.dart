import 'package:flutter/material.dart';
import 'package:pomodoro/components/entradaTempo.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Pomodoro'),
          Entradatempo(titulo: 'Trabalho', valor: 25),
          Entradatempo(titulo: 'Descanso', valor: 5),
        ],
      ),
    );
  }
}
