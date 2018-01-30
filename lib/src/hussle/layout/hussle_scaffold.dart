part of hussle;

class HussleScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar'),),
      body: new HussleTextField(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed('first');
        }
      ),
    );
  }

  void onActionClicked() {
    print('Floating action clicked');
  }
}

final googleSignIn = new GoogleSignIn();
final analytics = new FirebaseAnalytics();
final auth = FirebaseAuth.instance;

final dbRef = FirebaseDatabase.instance.reference();