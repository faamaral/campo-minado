import 'package:campo_minado/models/tabuleiro.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test(
    'Ganhar Jogo',
    () {
      Tabuleiro t = Tabuleiro(linhas: 2, colunas: 2, qtdeBombas: 0);
      t.campos[0].minar();
      t.campos[3].minar();

      t.campos[0].alterarMarcacao();
      t.campos[1].abrir();
      t.campos[2].abrir();
      t.campos[3].alterarMarcacao();

      expect(t.resolvido, isTrue);
    },
  );
}
