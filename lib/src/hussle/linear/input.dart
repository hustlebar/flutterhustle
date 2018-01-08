part of hussle;

class Login extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return buildUi(context);
  }

  Widget buildUi(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Center(
            child: new TextField(
              controller: _emailController,
              autocorrect: true,
              autofocus: true,
            ),
          ),
        ),

        new Center(
          child: new IconButton(
            icon: new Icon(Icons.access_alarm),
            onPressed: () => _onIconPressed(context)
          ),
        ),

        new Center(
          child: new BackButton(),
        ),

        new Center(
          child: new RaisedButton(
            child: new Text('Check'),
            onPressed: () => _onClicked(context),
          ),
        ),

        showPopMenuButton(context)

      ],
    );
  }

  void _onIconPressed(BuildContext context) {
    print('Icon pressed');
    showPopMenuButton(context);
  }

  void _onClicked(BuildContext context) {
    print(_emailController.text);

    _emailController.clear();

    showDialog(context);
    print('Selected player: $_selected');
    setState(() {

    });
  }

  void showDialog(BuildContext context) {
  }

  var _selected;

  Widget showPopMenuButton(BuildContext context) {
    return new PopupMenuButton(
      onSelected: (TennisPlayer selected) { setState(() => _selected = selected);},
      itemBuilder: (context) => <PopupMenuEntry<TennisPlayer>> [
        const PopupMenuItem<TennisPlayer>(
          value: TennisPlayer.roger,
          child: const Text('All time champion'),
        ),

        const PopupMenuItem<TennisPlayer>(
          value: TennisPlayer.nadal,
          child: const Text('The fighter'),
        ),

        const PopupMenuItem<TennisPlayer>(
          value: TennisPlayer.joko,
          child: const Text('What a man'),
        )
      ]
    );
  }
}

enum TennisPlayer {roger, nadal, joko}