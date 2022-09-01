import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({super.key, required this.answerText, required this.onPressed});

  final String answerText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue)),
        child: Text(answerText),
      ),
    );
  }
}
