part of hussle;

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar - Second'),),
      body: _buildUi(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pop();
        }
      ),
    );
  }

  Widget _buildUi() {
    return new Center(
      child: new Column(
        children: <Widget>[
          new Text('Second page')
        ],
      ),
    );
  }
}