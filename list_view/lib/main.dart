import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  List<String> fr = ["Apple", "Guava", "Orange"];

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("ListView"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: ListView.builder(
          itemCount:fr.length,
          itemBuilder: (context, index) {
            return Text(fr[index]);
          },
        ),
      ),
    ));
  }
}
