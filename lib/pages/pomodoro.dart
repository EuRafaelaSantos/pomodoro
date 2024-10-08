import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometro.dart';
import 'package:pomodoro/components/entradaTempo.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Cronometro()),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Entradatempo(
                    titulo: 'Trabalho',
                    valor: store.tempoTrabalho,
                    inc: store.incrementarTrabalho,
                    dec: store.decrementarTrabalho,
                  ),
                  Entradatempo(
                    titulo: 'Descanso',
                    valor: store.tempoDescanso,
                    inc: store.incrementarDescanso,
                    dec: store.decrementarDescanso,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
