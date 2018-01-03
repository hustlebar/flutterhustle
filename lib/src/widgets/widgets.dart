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
          actions: actions()
        ),

        body: new CustomColumn('Hello, Flutter!'),
      ),
    );
  }
}

List<Widget> actions() {
  List<Widget> widgets = new List();
  widgets.add(new IconButton(
    icon: new Icon(Icons.playlist_play),
    tooltip: 'Air it',
  ));

  widgets.add(new IconButton(
    icon: new Icon(Icons.playlist_add),
    tooltip: 'Restitch it',
  ));

  return widgets;
}