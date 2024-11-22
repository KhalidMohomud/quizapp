import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key? key, required this.answer, required this.falses})
      : super(key: key);

  @override
  State<Result> createState() => _ResultState();
  final int answer;
  final int falses;
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    final int answer = widget.answer;

    final int falses = widget.falses;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The answer $answer ',
              // 'The answer ${widget.answer}',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'The answer $falses',
              // 'The answer ${widget.falses}',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
