part of hussle;

class HussleTextField extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    TextField textField = new TextField(
      controller: _controller,
    );

    return new Column(
      children: <Widget>[
        new Center(
          child: textField,
        ),

        new Center(
          child: new RaisedButton(
            child: const Text('Click me'),
            onPressed: _onClick
          ),
        )
      ],
    );
  }

  _onClick() {
    print('Value is: ${_controller.text}');
    _controller.clear();
  }
}