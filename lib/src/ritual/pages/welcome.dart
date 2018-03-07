part of rituals;

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Scaffold(
      backgroundColor: Color(Colors.amberAccent.value),
      body: Center(
        child: Text('Rituals'),
      ),
    );
  }
}