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
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: _onFloatingAction,
          tooltip: 'Add',
          backgroundColor: const Color(0xFFE91E63),
        ),
        drawer: drawer(),
      ),
    );
  }
}

void _onFloatingAction() {
  print("Clicked...!");
}

Drawer drawer() {
  return new Drawer();
}

List<Widget> actions() {
  List<Widget> widgets = new List();
  widgets.add(new IconButton(
    icon: new Icon(Icons.playlist_play),
    tooltip: 'Air it',
    onPressed: onPressed,
  ));

  widgets.add(new IconButton(
    icon: new Icon(Icons.playlist_add),
    tooltip: 'Restitch it',
    onPressed: onPressed,
  ));

  return widgets;
}

void onPressed() {

}