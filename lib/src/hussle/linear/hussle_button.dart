part of hussle;

class HussleButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      child: new Text('Click me!'),
      onPressed: _onPressed
    );
  }

  void _onPressed() {
    print('Button clicked');
  }
}