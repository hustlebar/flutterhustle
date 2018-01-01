library widgets;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

part 'center.dart';
part 'column.dart';


class WidgetsBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Widgets Bar',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Widgets Bar'),
        ),

        body: new CustomColumn('Hello, Flutter!'),
      ),
    );
  }
}