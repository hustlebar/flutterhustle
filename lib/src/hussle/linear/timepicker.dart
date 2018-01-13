part of hussle;

class HussleTimePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildUi(context);
  }


  Widget buildUi(BuildContext context) {
    var button = new RaisedButton(
        child: new Text('Select time'),
        onPressed: () => _onClick(context)
    );

    return new Column(
      children: <Widget>[
        new Center(
          child: button,
        )
      ],
    );
  }

  void _onClick(BuildContext context) {
    print('Enters _onClick()');

    renderTimePicker(context);
  }
}

void renderTimePicker(BuildContext context) {
  var currentTime = new TimeOfDay.fromDateTime(new DateTime.now());
  showTimePicker(
      context: context,
      initialTime: currentTime,

  ).then((TimeOfDay time) {
    print('Selected time: ${time.toString()}');
  });
}