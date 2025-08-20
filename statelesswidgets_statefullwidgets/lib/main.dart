import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

// class MainApp extends StatelessWidget {
//   String dd = "Welcome";

//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.blue,
//             // alignment: Alignment.center,
//             child: Column(
//               children: [
//                 Text(dd),
//                 MaterialButton(
//                   onPressed: () {
//                     print(dd);
//                     dd = "Bye";
//                     print(dd);
//                   },
//                   child: Text("Click",style: TextStyle(color: Colors.white),),
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }

class MainApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Subclass();
  }
}

class Subclass extends State<MainApp> {
  String ff = "Hi";

  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Heading"), backgroundColor: Colors.blue),
        body: Column(
          children: [
            Text(ff),
            MaterialButton(
              onPressed: () {
                setState(() {
                  ff="Welcome";
                });
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    ));
  }
}
