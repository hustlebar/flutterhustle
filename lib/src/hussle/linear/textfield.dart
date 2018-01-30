part of hussle;

class HussleTextField extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();
  var currentUser;

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Widget _buildUi(BuildContext context) {
    TextField textField = new TextField(
      controller: _controller,
    );

    return new Column(
      children: <Widget>[
        new Center(
          child: textField,
        ),

        new Center(
          child: new RaisedButton(
            child: const Text('Google Signin'),
            onPressed: _onSignin
          ),
        ),

        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Center(
            child: new RaisedButton(
              child: const Text('Page route'),
              onPressed: () =>_onRoute(context)
            ),
          ),
        ),

        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Center(
            child: new RaisedButton(
              child: const Text('Save data'),
              onPressed: _onSave
            ),
          ),
        )

      ],
    );
  }

  _onSave() async {
    print('Enters _onSave()');
    
    var usersRef = dbRef.child('users');
    var response = await usersRef.push().set({
      'email': 'tham@gmail.com',
      'place': 'Chennai'
    });

    print('Response: $response');
  }

  _onSignin() async {
    print('Enters _onSignin()');
//    print('Value is, ${_controller.text}');
//    _controller.clear();

    currentUser = googleSignIn.currentUser;
    print('Current user after first attempt $currentUser');

    if (currentUser == null)
      currentUser = await googleSignIn.signInSilently();

    if (currentUser == null)
      currentUser = await googleSignIn.signIn();

    analytics.logLogin();

    print('After signin -> $currentUser');

    if (await auth.currentUser() == null) {
      GoogleSignInAuthentication credentials = await googleSignIn.currentUser.authentication;
      var firebaseUser = await auth.signInWithGoogle(
        idToken: credentials.idToken,
        accessToken: credentials.accessToken
      );

      print('User ${firebaseUser.email}');
    } else {
      var firebaseUser = await auth.currentUser();
      print('Logged in user: ${firebaseUser.email}');
    }
  }

  _onRoute(BuildContext context) async {
    print('Here user: $currentUser');

    bool value = await Navigator.of(context).push(
      new MaterialPageRoute<bool>(
        builder: (BuildContext cxt) {
          return new Center(
            child: new GestureDetector(
              child: const Text('Ok'),
              onTap: () {
                Navigator.of(context).pop(true);
              },
            ),
          );
        }
      )
    );

    print('value() $value');

    analytics.logEvent(name: 'Navigation_clicked');
  }
}