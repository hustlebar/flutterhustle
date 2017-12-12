part of flutterhustle;

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
          title: new Text('Flutter Hustle'),
        ),
      );
  }
}