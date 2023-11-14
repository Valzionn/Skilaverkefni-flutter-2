import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/sanic_cover.png',
            width: 300,
            color:  const Color.fromARGB(134, 1, 162, 245),
          ),

          const SizedBox(height: 80),
          Text(
            'E-Z Sonic Quiz',
            style: GoogleFonts.anton(
              color: const Color.fromARGB(255, 255, 224, 38),
              fontSize: 45,
              shadows: [const Shadow(
                  blurRadius: 10,
                  color: Colors.blueAccent
              ),
            ],
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(153, 255, 224, 224),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
// gat verið fyrir neðan í column
// Opacity(
//   opacity: 0.6,
//   child: Image.asset('assets/images/quiz-logo.png',
//     width: 300,
//   ),
// ),