part of hussle;

class HussleScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    Navigator.of(context).push(
//      new MaterialPageRoute<Null>(
//        builder: (BuildContext context) {
//          return new Scaffold(
//            appBar: new AppBar(title: new Text('Hussle Bar'),),
//            body: new MainPage(),
//            floatingActionButton: new FloatingActionButton(
//              child: new Icon(Icons.add),
//              onPressed: () {
//                Navigator.of(context).pop();
//              }
//            ),
//          );
//        }
//      )
//    );
//
//    return null;

    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar'),),
      body: new MainPage(),
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