part of hussle;

class HussleListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Scaffold _buildUi(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List view')
      ),

      body: _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return new ListView(
      children: _children(),
    );
  }

  List<Widget> _children() {
    List<Widget> children = new List();

    for (var i = 0; i < 10; i++) {
      children.add(_child());
    }

    return children;
  }

  Card _child() {
    return new Card(
      child: new ListTile(
        leading: new Text('T'),
        title: new Text('Flutter coding is going good'),
        subtitle: new Text('Flutter coding is going good with high speed and good motivation'),
      ),
    );
  }
}