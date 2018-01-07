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
      children: <Widget>[

        new Center(
          child: new TextField(
            controller: _emailController,
          ),
        ),

        new Center(
          child: new RaisedButton(
            child: new Text('Check'),
            onPressed: _onClicked,
          ),
        )



      ],
    );
  }

  void _onClicked() {
    print('Button clicked');
    print(_emailController.text);
    setState(() {
      
    });
  }
}