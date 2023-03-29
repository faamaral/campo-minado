import 'package:campo_minado/components/campo_widget.dart';
import 'package:campo_minado/components/resultado_widget.dart';
import 'package:campo_minado/components/tabuleiro_widget.dart';
import 'package:campo_minado/models/campo.dart';
import 'package:campo_minado/models/explosao_exception.dart';
import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter/material.dart';

class CampoMinadoApp extends StatefulWidget {
  @override
  State<CampoMinadoApp> createState() => _CampoMinadoAppState();
}

class _CampoMinadoAppState extends State<CampoMinadoApp> {
  bool? _venceu ;
  Tabuleiro _tabuleiro =
      new Tabuleiro(linhas: 12, colunas: 12, qtdeBombas: 3);
  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);

    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(venceu: _venceu, onReiniciar: _reiniciar),
        body: Container(
          child: TabuleiroWidget(
              tabuleiro: _tabuleiro,
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
