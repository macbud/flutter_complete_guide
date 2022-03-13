import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
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
          Question(questions[_questionIndex]),
          ElevatedButton(
              child: const Text('Answer 1'), onPressed: _answerQuestion),
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
