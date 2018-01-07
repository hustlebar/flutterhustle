part of hussle;

class HussleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        new Center(
          child: new RaisedButton(
            onPressed: _onRaised,
            child: new Text('Raised Button'),
            elevation: 5.0,
          ),
        ),

        new Center(
          child: new FlatButton(
            onPressed: _onFlat,
            child: new Text('Flat Button'),
            color: new Color(0xFF42A5F5),
          ),
        ),

        new Center(
          child: new IconButton(
            icon: new Icon(Icons.widgets),
            onPressed: _onFlat
          ),
        )
      ],
    );
  }

  void _onFlat() {
    print('Flat button clicked');
  }

  void _onRaised() {
    print('Raised button clicked');
  }
}