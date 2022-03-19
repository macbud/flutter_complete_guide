import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Done!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              child: Text('Raised button :)'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepOrange),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {
                print('Raised button pressed!');
              }),
          ElevatedButton(
              child: Text('Raised button (dif styling)'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange, onPrimary: Colors.white),
              onPressed: () {
                print('Raised button pressed!');
              }),
          TextButton(
            child: Text('Flat Button'),
            style: TextButton.styleFrom(primary: Colors.orange),
            onPressed: () {
              print('Flat button pressed');
            },
          ),
          OutlinedButton(
            child: Text('Outline Button'),
            style: OutlinedButton.styleFrom(primary: Colors.orange),
            onPressed: () {
              print('Outline button pressed');
            },
          ),
        ],
      ),
    );
  }
}
