import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/components/resultado_widget.dart';
import 'package:campo_minado/components/tabuleiro_widget.dart';
import 'package:campo_minado/models/campo.dart';
import 'package:campo_minado/models/explosao_exception.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);
    
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(venceu: null, onReiniciar: _reiniciar),
        body: Container(
          child: TabuleiroWidget(
              tabuleiro: Tabuleiro(linhas: 15, colunas: 15, qtdeBombas: 10),
              onAbrir: _abrir,
              onAlternarMarcacao: _alternarMarcacao),
        ),
      ),
    );
  }

  void _reiniciar() {}

  void _abrir(Campo campo) {}

  void _alternarMarcacao(Campo campo) {}
}
