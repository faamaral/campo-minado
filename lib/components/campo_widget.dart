import 'package:campo_minado/models/campo.dart';
import 'package:campo_minado/utils/constants/app_images.dart';
import 'package:flutter/material.dart';

class CampoWidget extends StatelessWidget {
  final Campo campo;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;
  const CampoWidget(
      {super.key,
      required this.campo,
      required this.onAbrir,
      required this.onAlternarMarcacao});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onAbrir(campo),
      onLongPress: () => onAlternarMarcacao(campo),
      child: _getImage(),
    );
  }

  Widget _getImage() {
    int qtdMinas = campo.qtdeMinasNaVizinhanca;
    if (campo.aberto && campo.minado && campo.explodido) {
      return Image.asset(AppImages.bomba_0);
    } else if (campo.aberto && campo.minado) {
      return Image.asset(AppImages.bomba_1);
    } else if (campo.aberto) {
      return Image.asset(AppImages.getAberto(qtdMinas));
    } else if (campo.marcado) {
      return Image.asset(AppImages.bandeira);
    } else {
      return Image.asset(AppImages.fechado);
    }
  }
}
