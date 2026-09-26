import 'dart:math';

class GameService{
  final Random _random = Random();

  double gerarPosicaoAlvo(double maxPosicao) {
    if (maxPosicao <= 0) {
      return 0;
    }
    return _random.nextDouble() * maxPosicao;
  }
}