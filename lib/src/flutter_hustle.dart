library flutterhustle;

import 'package:flutter/material.dart';

part 'views/welcome.dart';

class FlutterHustleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Hustle',
      theme: new ThemeData(
        fontFamily: 'Helvetica neue',
        primarySwatch: Colors.blue
      ),
      home: new TodoList(),
    );
  }
}