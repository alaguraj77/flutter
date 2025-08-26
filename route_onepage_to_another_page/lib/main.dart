import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("FirstPage"),
        backgroundColor: Colors.blueAccent,
      ),
      body: MaterialButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage("Hello World")),
          );
        },
        child: Text("Click Me Go To Second Page"),
      ),
    ));
  }
}

class SecondPage extends StatelessWidget {

 String label="";

 SecondPage(this.label);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(label),
          Text("Hai"),
          MaterialButton(onPressed:(){
             Navigator.pop(context);
          },
          child: Text("Goto First Page"),
          color: Colors.red,
          )
        ],
      ),
    );
  }
}
