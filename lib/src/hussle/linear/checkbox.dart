part of hussle;

class HussleCheckboxWithTitle extends StatelessWidget {
  bool rogerVal = false;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Center(
          child: new CheckboxListTile(
            title: new Text('Roger'),
            value: rogerVal,
            onChanged: (bool value) {
              
            }
          )
        )
      ],
    );
  }

  void _onRoger(bool value) {
    rogerVal = value;
    print('On Roger: $rogerVal');
  }
}

class HussleCheckbox extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new HussleCheckboxState();
  }
}

class HussleCheckboxState extends State<HussleCheckbox> {
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return buildUi();
  }

  Widget buildUi() {
    return new Column(
      children: <Widget>[
        new Center(
          child: new Checkbox(
            value: checkboxValue,
            onChanged: (bool value) {
              setState(() {
                checkboxValue = value;
                print('Checkbox value: $checkboxValue');
              });
            }
          ),
        )
      ],
    );
  }
}