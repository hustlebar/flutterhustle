part of flutterhustle;

class TodoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        title: new Text('Flutter Hustle'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null
          )
        ],
      ),

      body: new Center(
        child: new Text('Welcome Flutter hustle!'),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        tooltip: 'Add',
        child: new Icon(Icons.add),
      ),
    );
  }
}