import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "0";
  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  operation() {}

  Widget button(String btnText) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        fillColor: Colors.black12,
        padding: const EdgeInsets.all(30.0),
        splashColor: Colors.black,
        shape: Border.all(color: Colors.black, width: 2),
        onPressed: () {
          if (btnText == "C") {
            output = "0";
            _output = "0";
            num1 = 0.0;
            num2 = 0.0;
            operand = "";
          } else if (btnText == "+" ||
              btnText == "-" ||
              btnText == "/" ||
              btnText == "X") {
            num1 = double.parse(output);
            operand = btnText;
            _output = "0";
          } else if (btnText == "=") {
            num2 = double.parse(output);
            switch (operand) {
              case "+":
                _output = (num1 + num2).toString();
                break;
              case "-":
                _output = (num1 - num2).toString();
                break;
              case "/":
                _output = (num1 / num2).toString();
                break;
              case "X":
                _output = (num1 * num2).toString();
                break;
            }
            num1 = 0.0;
            num2 = 0.0;
            operand = "";
          } else {
            _output = _output + btnText;
          }

          setState(() {
            output = double.parse(_output).toStringAsFixed(2);
          });
        },
        child: Text(
          btnText,
          style: const TextStyle(
              fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Calculator"),
              backgroundColor: Colors.black12,
            ),
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        border: Border.all(color: Colors.black, width: 2.0)),
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      output,
                      style: const TextStyle(
                          fontSize: 60.0, fontWeight: FontWeight.w600),
                    ),
                  )),
                  Row(
                    children: [
                      button("9"),
                      button("8"),
                      button("7"),
                      button("/"),
                    ],
                  ),
                  Row(
                    children: [
                      button("4"),
                      button("5"),
                      button("6"),
                      button("X"),
                    ],
                  ),
                  Row(
                    children: [
                      button("3"),
                      button("2"),
                      button("1"),
                      button("-"),
                    ],
                  ),
                  Row(
                    children: [
                      button("0"),
                      button("C"),
                      button("="),
                      button("+"),
                    ],
                  )
                ],
              ),
            )));
  }
}
