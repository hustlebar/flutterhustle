part of hussle;

class HussleScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar'),),
      body: new FavoriteWidget(5),
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