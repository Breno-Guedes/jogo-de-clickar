import 'dart:async';

import 'package:flutter/material.dart';

import '../models/game_state.dart';
import '../services/game_service.dart';
import '../widgets/score_display.dart';
import '../widgets/target.dart';
import '../widgets/time_display.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final GameState gameState = GameState(
    pontos: 0,
    tempoRestante: 30,
    alvoX: 50,
    alvoY: 50,
  );
  final GameService gameService = GameService();

  Timer? timer;

  static const double targetSize = 60;

  bool gameOver = false;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (gameState.tempoRestante > 0) {
          setState(() {
            gameState.decrentarTempo();
          });
        } else {
          timer.cancel();

          setState(() {
            gameOver = true;
          });
        }
      },
    );
  }

  void hitTarget(double width, double height) {
    if (gameOver) {
      return;
    }

    setState(() {
      gameState.incrementarPontos();

      gameState.alvoX = gameService.gerarPosicaoAlvo(
        width - targetSize,
      );

      gameState.alvoY = gameService.gerarPosicaoAlvo(
        height - targetSize,
      );
    });
  }

  void restartGame() {
    timer?.cancel();

    gameState.reset();

    setState(() {
      gameState.reset();
      gameOver = false;
    });

    startTimer();
  }

  void finishGame() {
    timer?.cancel();

    Navigator.pop(context);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScoreDisplay(
                  pontos: gameState.pontos,
                ),
                TimerDisplay(
                  tempoRestante: gameState.tempoRestante,
                ),
              ],
            ),
          ),

          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Positioned(
                      left: gameState.targetX,
                      top: gameState.targetY,
                      child: Target(
                        onTap: () {
                          hitTarget(
                            constraints.maxWidth,
                            constraints.maxHeight,
                          );
                        },
                      ),
                    ),

                    if (gameOver)
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.black54,
                        child: Center(
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Fim de jogo',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  const SizedBox(height: 15),

                                  Text(
                                    'Pontuação: ${gameState.pontos}',
                                    style: const TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),

                                  const SizedBox(height: 25),

                                  ElevatedButton(
                                    onPressed: restartGame,
                                    child: const Text(
                                      'Jogar novamente',
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  TextButton(
                                    onPressed: finishGame,
                                    child: const Text(
                                      'Voltar',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}