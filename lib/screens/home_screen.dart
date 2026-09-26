import 'package:flutter/material.dart';

import 'game_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JOGO DE CLICKAR'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'JOGO DE CLICKAR',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Clique no alvo o máximo de vezes possível.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GameScreen(),
                  ),
                );
              },
              child: const Text(
                'Iniciar jogo',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}