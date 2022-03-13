import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerChosen() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerChosen,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerChosen,
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
