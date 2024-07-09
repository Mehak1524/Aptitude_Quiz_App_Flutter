import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.7,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Take the Aptitude Quiz!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color.fromARGB(255, 40, 15, 82),
            ),
            icon: const Icon(
              Icons.arrow_forward_outlined,
              color: Color.fromARGB(255, 54, 21, 110),
            ),
            onPressed: () {
              startQuiz();
            },
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
