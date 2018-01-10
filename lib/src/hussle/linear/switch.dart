part of hussle;

class HussleSwitch extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HussleSwitchState();
  }
}

class HussleSwitchState extends State<HussleSwitch> {
  bool switchValue = false;
  bool anotherValue = true;

  @override
  Widget build(BuildContext context) {

    var widget = new Switch(
      value: switchValue,
      onChanged: (bool value) {
        setState(() {
          switchValue = value;
        });
      }
    );

    var switch2 = new SwitchListTile(
      value: anotherValue,
      title: new Text('Will you come?'),
      onChanged: (bool value) {
        setState(() {
          anotherValue = value;
        });
      }
    );

    return new Column(
      children: <Widget>[

        new Center(
          child: widget,
        ),

        new Center(
          child: switch2,
        )
      ],
    );
  }
}