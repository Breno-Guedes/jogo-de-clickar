import 'package:flutter/material.dart';

class ScoreDisplay extends StatelessWidget {
  final int pontos;

  const ScoreDisplay({
    super.key,
    required this.pontos,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Pontos: $pontos',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}