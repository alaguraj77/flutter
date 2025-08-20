import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.red),
                    alignment: Alignment.center,
                    child: Text("Hello",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
                  ),
                   Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.red),
                    alignment: Alignment.center,
                    child: Text("Hello"),
                  )
                ],
            ),
          ),
        ),
      ),
    )
  );
}
