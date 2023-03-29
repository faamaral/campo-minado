import 'package:campo_minado/components/resultado_widget.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(venceu: null, onReiniciar: _reiniciar),
        body: Container(child: Text('Tabuleiro'),),
      ),
    );
  }

  void _reiniciar() {
  }
}
