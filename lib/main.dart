import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'What\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My first app')),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(
              child: const Text('Answer 1'), onPressed: answerQuestion),
          ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!')),
          ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              }),
        ]),
      ),
    );
  }
}
