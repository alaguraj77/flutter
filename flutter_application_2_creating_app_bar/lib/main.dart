import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text("Resturent"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          height: 100,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                color: Colors.black,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Chicken Noodles",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Text("Delisious Chicken Noodles"),
              Text("28.66",style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
            ],
          ),
        ),
      ),
    ),
  );
}
