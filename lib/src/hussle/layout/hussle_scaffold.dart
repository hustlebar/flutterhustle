part of hussle;

class HussleScaffold extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Hussle Bar'),),
      body: new HussleDialog(),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: onActionClicked
      ),
    );
  }

  void onActionClicked() {
    print('Floating action clicked');
  }
}