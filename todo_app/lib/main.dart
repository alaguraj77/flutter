import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String ff = "Hello";

  List<String> box = [];

  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Todo List",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
        ),

        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: textController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Enter The Text"),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {
                    setState(() {
                      // ff = textController.text;
                      box.add(textController.text);
                      textController.clear();
                    });
                  },
                  child: Text("Add"),
                ),
              ],
            ),

            Flexible(
              child: ListView.builder(
                itemCount: box.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Text(box[index]),
                        ),
                      ),
                      MaterialButton(
                        child: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            box.removeAt(index);
                          });
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
