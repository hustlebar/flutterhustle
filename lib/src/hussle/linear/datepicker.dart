part of hussle;

class HussleDatePicker extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new DatePickerState();
  }
}

class DatePickerState extends State<HussleDatePicker> {

  @override
  Widget build(BuildContext context) {
    var button = new RaisedButton(
        child: new Text('Pick a date'),
        onPressed: () {
          _onClick(context);
        }
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
    _datePicker(context).then((DateTime selected) {
      print('Selected value: ${selected.toString()}');
    });
  }

  Future<DateTime> _datePicker(BuildContext context) {
    var now = new DateTime.now();
    var first = new DateTime(2018, 1);
    var last = new DateTime(2018, 31);

    return showDatePicker(
        context: context,
        initialDate: now,
        firstDate: first,
        lastDate: last,
    );
  }
}