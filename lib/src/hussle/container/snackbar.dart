part of hussle;

class HussleSnackBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Center(
          child: new RaisedButton(
            child: new Text('Snackbar'),
            onPressed: () =>_onClick(context)
          ),
        )
      ],
    );
  }

  void _onClick(BuildContext context) {
    print('Enters _onClick');

    var snackBar = new SnackBar(
      content: new Text('Hello Snackbar!'),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}