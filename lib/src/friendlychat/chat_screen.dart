part of friendlychat;

class ChatScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ChatState();
  }
}

class ChatState extends State<ChatScreen> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendly Chat"),
      ),

      body: bodyUi(),
    );
  }

  Widget bodyUi() {

    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _controller,
                onSubmitted: onSubmit,
                decoration: new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),

            new Container(
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => onSubmit(_controller.text)
              )
            )
          ],
        )
      )
    );
  }

  void onSubmit(String text) {
    print("Value ${text}");
    _controller.clear();
  }
}