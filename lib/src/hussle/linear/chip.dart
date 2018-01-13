part of hussle;

class HussleChip extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[

        new Padding(
          padding: new EdgeInsets.all(25.0),
          child: new Center(
            child: _buildUi(),
          ),
        ),
      ],
    );
  }

  Widget _buildUi() {
    return new Chip(
      avatar: new Icon(Icons.widgets),
      label: new Text('Tham'),
      onDeleted: () {
        print('Closed');
      },
    );
  }
}