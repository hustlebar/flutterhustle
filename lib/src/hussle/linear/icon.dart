part of hussle;

class HussleIcon extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Padding(
          padding: new EdgeInsets.all(25.0),
          child: new Center(
            child: _buildIcon(),
          ),
        ),
      ],
    );
  }

  Widget _buildIcon() {
    var iconData = new IconData(3000);
    return new Icon(
      iconData,
      color: new Color.fromRGBO(100, 200, 100, 10.0),
      size: 100.0,
    );
  }
}