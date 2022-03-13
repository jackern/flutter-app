import 'package:flutter/material.dart';

import './question.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'favourite colour?',
      'favourite ice cream',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Golf Home'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerChosen,
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 3 chosen');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
