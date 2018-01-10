part of hussle;

class HussleRadio extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new RadioState();
  }
}

enum Player {roger, joko, nadal}

class RadioState extends State<HussleRadio> {
  Player _current = Player.roger;

  @override
  Widget build(BuildContext context) {

    var rogerRadio = new RadioListTile(
      value: Player.roger,
      groupValue: _current,
      title: new Text('Roger'),
      onChanged: (Player value) {
        _onRadio(value);
      }
    );

    var jokoRadio = new RadioListTile(
      value: Player.joko,
      groupValue: _current,
      title: new Text('Joko'),
      onChanged: (Player value) {
        _onRadio(value);
      }
    );

    var nadalRadio = new RadioListTile(
      value: Player.nadal,
      groupValue: _current,
      title: new Text('Nadal'),
      onChanged: (Player value) {
        _onRadio(value);
      }
    );


    return new Column(
      children: <Widget>[

        rogerRadio, jokoRadio, nadalRadio

      ],
    );
  }

  void _onRadio(Player value) {
    setState(() {
      _current = value;
    });
  }
}