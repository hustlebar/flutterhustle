part of rituals;

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Center(
      child: Text('Rituals'),
    );
  }
}