part of hussle;

class HussleTextField extends StatelessWidget {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _buildUi(context);
  }

  Widget _buildUi(BuildContext context) {
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
            child: const Text('Click'),
            onPressed: _onClick
          ),
        ),

        new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Center(
            child: new RaisedButton(
              child: const Text('Page route'),
              onPressed: () =>_onRoute(context)
            ),
          ),
        ),

      ],
    );
  }

  _onClick() {
    print('Value is, ${_controller.text}');
    _controller.clear();
  }

  _onRoute(BuildContext context) async {
    bool value = await Navigator.of(context).push(
      new MaterialPageRoute<bool>(
        builder: (BuildContext cxt) {
          return new Center(
            child: new GestureDetector(
              child: const Text('Ok'),
              onTap: () {
                Navigator.of(context).pop(true);
              },
            ),
          );
        }
      )
    );

    print('value: $value');
  }
}