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
    var circleBorder = new CircleBorder(
      side: new BorderSide(width: 4.0, color: Colors.lightBlue.shade50)
    );

    return new Chip(
      avatar: new Icon(Icons.widgets),
      label: new Text('Tham'),
      backgroundColor: Colors.orangeAccent,
//      border: circleBorder,
//      onDeleted: () {
//        print('Closed');
//      },
    );
  }
}