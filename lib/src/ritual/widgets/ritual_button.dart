part of rituals;

class RitualButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  RaisedButton _buildUi() {
    return RaisedButton(
      child: Text('Hello Buttond'),
      onPressed: () => {},
    );
  }
}
