// ignore_for_file: depend_on_referenced_packages

/*import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:calculatorapp(),
    );
  }
}
class calculatorapp extends StatefulWidget {
  const calculatorapp({super.key});

  @override
  State<calculatorapp> createState() => _calculatorappState();
}

class _calculatorappState extends State<calculatorapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

    );
  }
}

   */  
 /* import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      num1 = double.parse(output);
      operand = buttonText;
      output = "0";
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        output = (num1 + num2).toString();
      }
      if (operand == "-") {
        output = (num1 - num2).toString();
      }
      if (operand == "*") {
        output = (num1 * num2).toString();
      }
      if (operand == "/") {
        output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      if (output == "0") {
        output = buttonText;
      } else {
        output = output + buttonText;
      }
    }
    setState(() {
      output = output;
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(24.0),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("*"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("C"),
                buildButton("0"),
                buildButton("="),
                buildButton("+"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
    */  
    
/*import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = "0";
  double num1 = 0;
  double num2 = 0;
  String operand = "";

  void buttonPressed(String buttonText) {
    if (buttonText == "C") {
      output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      num1 = double.parse(output);
      operand = buttonText;
      output = "0";
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "+") {
        output = (num1 + num2).toString();
      }
      if (operand == "-") {
        output = (num1 - num2).toString();
      }
      if (operand == "*") {
        output = (num1 * num2).toString();
      }
      if (operand == "/") {
        output = (num1 / num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      if (output == "0") {
        output = buttonText;
      } else {
        output = output + buttonText;
      }
    }
    setState(() {
      output = output;
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(24.0),
        ),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                buildButton("7"),
                buildButton("8"),
                buildButton("9"),
                buildButton("/"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("4"),
                buildButton("5"),
                buildButton("6"),
                buildButton("*"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("1"),
                buildButton("2"),
                buildButton("3"),
                buildButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                buildButton("C"),
                buildButton("0"),
                buildButton("="),
                buildButton("+"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
 */
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;

  List<Map<String, dynamic>> quizData = [
    {
      'question': 'What is the capital of France?',
      'answers': ['New York', 'London', 'Paris', 'Berlin'],
      'correctAnswer': 'Paris',
    },
    {
      'question': 'Which planet is known as the Red Planet?',
      'answers': ['Venus', 'Mars', 'Jupiter', 'Mercury'],
      'correctAnswer': 'Mars',
    },
    // Add more questions and answers here
  ];

  void answerQuestion(String selectedAnswer) {
    String correctAnswer = quizData[currentQuestionIndex]['correctAnswer'];

    if (selectedAnswer == correctAnswer) {
      setState(() {
        score++;
      });
    }

    setState(() {
      if (currentQuestionIndex < quizData.length - 1) {
        currentQuestionIndex++;
      } else {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Quiz Completed'),
            content: Text('Your Score: $score out of ${quizData.length}'),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            quizData[currentQuestionIndex]['question'],
            style: TextStyle(fontSize: 20.0),
          ),
          Column(
            children: (quizData[currentQuestionIndex]['answers'] as List<String>)
                .map((answer) {
              return ElevatedButton(
                onPressed: () {
                  answerQuestion(answer);
                },
                child: Text(answer),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
