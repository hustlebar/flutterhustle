part of hussle;

class HussleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new Column(
      children: <Widget>[
        new Center(
          child: new RaisedButton(
            onPressed: _onRaised,
            child: new Text('Raised Button'),
          ),
        ),

        new Center(
          child: new FlatButton(
            onPressed: _onFlat,
            child: new Text('Flat Button'),
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