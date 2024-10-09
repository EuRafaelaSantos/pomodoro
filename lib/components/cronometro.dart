import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/cronometroBotao.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
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
          Text(
            '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Observer(
              builder: (_) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!store.iniciado)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Cronometrobotao(
                            texto: 'Iniciar',
                            icone: Icons.play_arrow,
                            click: store.iniciar,
                          ),
                        ),
                      if (store.iniciado)
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Cronometrobotao(
                            texto: 'Parar',
                            icone: Icons.stop,
                            click: store.parar,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Cronometrobotao(
                          texto: 'Reiniciar',
                          icone: Icons.refresh,
                          click: store.reiniciar,
                        ),
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
