part of friendlychat;

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('Friendly Chat')
      ),
      body: _buildUi(),
    );
  }

  Widget _buildUi() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _textController,
              onSubmitted: _onSubmit,
              decoration: new InputDecoration.collapsed(hintText: "Send a message")
            ),
          ),

          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => _onSubmit(_textController.text))
          )
        ],
      )
    );
  }

  void _onSubmit(String text) {
    print('Value entered: $text');
    _textController.clear();
  }
}

class ChatMessage extends StatelessWidget {
  String message;
  ChatMessage({this.message});

  @override
  Widget build(BuildContext context) {

  }
}