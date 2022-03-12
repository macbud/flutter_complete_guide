// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav color?',
      'What\'s your fav animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('My first app')),
        body: Column(children: const [
          Text('The question'),
          ElevatedButton(child: Text('Answer 1'), onPressed: null),
          ElevatedButton(child: Text('Answer 2'), onPressed: null),
          ElevatedButton(child: Text('Answer 3'), onPressed: null),
        ]),
      ),
    );
  }
}
