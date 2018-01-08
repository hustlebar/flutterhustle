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

        new Center(
          child: new TextField(
            controller: _emailController,
            autocorrect: true,
            autofocus: true,
          ),
        ),

        new Center(
          child: new RaisedButton(
            child: new Text('Check'),
            onPressed: () => _onClicked(context),
          ),
        )

      ],
    );
  }

  void _onClicked(BuildContext context) {
    print(_emailController.text);

    _emailController.clear();

    showDialog(context);
    setState(() {

    });
  }

  void showDialog(BuildContext context) {
  }
}