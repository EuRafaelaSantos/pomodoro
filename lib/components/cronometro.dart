import 'package:flutter/material.dart';
import 'package:pomodoro/components/cronometroBotao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hoda de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          const Text(
            '25:00',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Cronometrobotao(
                  texto: 'Iniciar',
                  icone: Icons.play_arrow,
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Cronometrobotao(
                  texto: 'Parar',
                  icone: Icons.stop,
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Cronometrobotao(
                  texto: 'Reiniciar',
                  icone: Icons.refresh,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
