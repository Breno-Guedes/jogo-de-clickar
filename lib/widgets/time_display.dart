import 'package:flutter/material.dart';

class TimerDisplay extends StatelessWidget {
  final int tempoRestante;

  const TimerDisplay({
    super.key,
    required this.tempoRestante,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Tempo: $tempoRestante',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}