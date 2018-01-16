part of hussle;

class FirstPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar'),),
      body: _buildUi(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('second');
        }
      ),
    );
  }

  Widget _buildUi() {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Text('First page')
        ],
      ),
    );
  }
}