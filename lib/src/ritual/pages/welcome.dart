part of rituals;

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          RitualsContainer('graphics/background.jpg'),
          Text('Work Rituals')
        ],
      ),
    );
  }
}