// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'text.dart';
import 'TextControl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> arrayText = ["Hello", "World", "!"];

  int index = 0;

  void changeText() {
    setState(() {
      index++;
      if (index == arrayText.length) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Text"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                PrettyText(arrayText: arrayText, index: index),
                SizedBox(
                  height: 50,
                ),
                TextControl(
                  change: changeText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
