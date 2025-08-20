import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            // color: Colors.blue,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            alignment: Alignment.center,
            child: Container(
              child: Text("Hello World"),
              width: 100,
              height: 100,
              // color: Colors.red,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
            ),
          ),
        ),
      ),
    ),
  );
}
