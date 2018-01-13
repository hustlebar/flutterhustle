part of hussle;

class HussleAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var button = new RaisedButton(
      child: const Text('Click Alert'),
      onPressed: () {showAlert(context);}
    );

    return new Column(
      children: <Widget>[
        new Center(
          child: button,
        )
      ],
    );
  }

  void showAlert(BuildContext context) {
    var alert = new AlertDialog(
      title: const Text('Select a city'),
      actions: <Widget>[
        new FlatButton(onPressed: () => print('Ok clicked'), child: const Text('Ok')),
        new FlatButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Cancel'))
      ],
    );

    showDialog(context: context, child: alert);
  }
}