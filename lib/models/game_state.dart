class GameState {
  int pontos;
  int tempoRestante;
  double alvoX;
  double alvoY;

  GameState({
    this.pontos = 0,
    this.tempoRestante = 30,
    this.alvoX = 50,
    this.alvoY = 50,
  });

  int get score => pontos;
  double get targetX => alvoX;
  double get targetY => alvoY;

  void reset() {
    resetar();
  }

  void resetar() {
    pontos = 0;
    tempoRestante = 30;
    alvoX = 50;
    alvoY = 50;
  }

  void incrementarPontos() {
    pontos++;
  }

  void decrentarTempo() {
    tempoRestante--;
  }
}
