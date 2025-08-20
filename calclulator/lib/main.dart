import 'package:flutter/material.dart';

void main() {
  runApp(Mainapp());
}

class Mainapp extends StatefulWidget {
  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  String inputText = "";
  String claclulatedValue = "";

  String operator = "";

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(20),
                child: Text(
                  inputText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),

              Column(
                children: [
                  Row(
                    children: [
                      calclutor("7", Colors.white),
                      calclutor("8", Colors.white),
                      calclutor("9", Colors.white),
                      calclutor("/", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      calclutor("4", Colors.white),
                      calclutor("5", Colors.white),
                      calclutor("6", Colors.white),
                      calclutor("*", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      calclutor("1", Colors.white),
                      calclutor("2", Colors.white),
                      calclutor("3", Colors.white),
                      calclutor("-", Colors.orange),
                    ],
                  ),
                  Row(
                    children: [
                      calclutor("0", Colors.white),
                      calclutor(".", Colors.white),
                      calclutor("=", Colors.orange),
                      calclutor("+", Colors.orange),
                    ],
                  ),
                ],
              ),
              calclutor("Clear", Colors.white),
            ],
          ),
        ),
      ),
    ));
  }

  Widget calclutor(String number, Color color) {
    double size = MediaQuery.of(context).size.width / 5;

    return InkWell(
      onTap: () => {
        if (number == "Clear")
          {
            setState(() {
              inputText = "";
            }),
          }
        else if (number == "+" ||
            number == "-" ||
            number == "*" ||
            number == "/")
          {
            setState(() {
              claclulatedValue = inputText;

              inputText = "";
              operator = number;
            }),
          }
        else if (number == "=")
          {
            setState(() {
              double calc = double.parse(claclulatedValue);
              double input = double.parse(inputText);

              if (operator == "+") {
                inputText = (calc + input).toString();
              }
             else  if (operator == "-") {
                inputText = (calc - input).toString();
              }
              else if (operator == "*") {
                inputText = (calc * input).toString();
              }
             else  if (operator == "/") {
                inputText = (calc / input).toString();
              }

            
            }),
          }
        else
          {
            setState(() {
              inputText = inputText + number;
            }),
          },
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color,
        ),
        child: Text(
          number,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
