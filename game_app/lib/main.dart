// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainApp()));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Start"),
                height: 100,
                minWidth: 100,
                color: const Color.fromARGB(179, 255, 255, 255),
                shape: CircleBorder(),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2,
            color: Colors.red,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Start"),
                minWidth: 100,
                height: 100,
                shape: CircleBorder(),
                color: const Color.fromARGB(179, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double redheight = 0;
  double blueheight = 0;

  double redPoints = 0;
  double bluePoints = 0;

  bool intilizer = false;

  @override
  Widget build(BuildContext context) {
    if (intilizer == false) {
      redheight = MediaQuery.of(context).size.height / 2;
      blueheight = MediaQuery.of(context).size.height / 2;

      intilizer = true;
    }

    return Scaffold(
      body: Column(
        children: [
          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                blueheight = blueheight + 20;
                redheight = redheight - 20;
                bluePoints = bluePoints + 5;
              });

              double maxHeight = MediaQuery.of(context).size.height - 30;

              if (blueheight > maxHeight) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(bluePoints,"Blue Team Won",Colors.blue),
                  ),
                );
              }
            },
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: blueheight,
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Player A",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    bluePoints.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          MaterialButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                blueheight = blueheight - 20;
                redheight = redheight + 20;
                redPoints = redPoints + 5;
              });

              double maxHeight = MediaQuery.of(context).size.height - 30;

              if (redheight > maxHeight) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage(redPoints,"Red Team Won",Colors.red)),
                );
              }
            },
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              height: redheight,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Player B",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    redPoints.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  double Res = 0;
  String Winner = "";
  Color color;

  ResultPage(this.Res, this.Winner, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Res.toString(),
                style: TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                Winner,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              MaterialButton(
                color: Colors.grey[300],
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => MainApp(),));
                },
                child: Text("Goto Home Page"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

