import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body:Center(
        child:Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightBlue),
          alignment:Alignment.center,
          child:Container(
            width: 200,
            height:200,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
            child:Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 67, 212, 0)),
              child: Text("Hello"),
            ),
          ),    
        ),
      ),
    ),
  ));
}
