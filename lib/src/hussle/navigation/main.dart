part of hussle;

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Main page')
        ],
      ),
    );
  }
}