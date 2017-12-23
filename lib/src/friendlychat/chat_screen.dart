part of friendlychat;

class ChatScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ChatState();
  }
}

class ChatState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _controller = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool _hasFocus = true;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
        elevation:
          Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),

      body: new Column(                                        //modified
        children: <Widget>[                                         //new
          new Flexible(                                               //new
            child: new ListView.builder(                              //new
              padding: new EdgeInsets.all(8.0),                       //new
              reverse: true,                                          //new
              itemBuilder: (_, int index) => _messages[index],        //new
              itemCount: _messages.length,                            //new
            )                                                         //new
          ),                                                          //new
          new Divider(height: 2.0),                                   //new
          new Container(                                              //new
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor),                   //new
              child: bodyUi(),                        //modified
          ),                                                          //new
        ]                                                            //new
      ),                                                             //new
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
                autofocus: _hasFocus,
              ),
            ),

            new Container(
              child: getButton()
            )
          ],
        )
      )
    );
  }

  Widget getButton() {
    return Theme.of(context).platform == TargetPlatform.iOS ?
      new CupertinoButton(                                       //new
        child: new Text("Send"),                                 //new
        onPressed: () => onSubmit(_controller.text)) :
      new IconButton(                                            //modified
        icon: new Icon(Icons.send),
        onPressed: () => onSubmit(_controller.text)
    );
  }

  void onSubmit(String text) {
    ChatMessage chatMessage = new ChatMessage(
      message: text,
      animationController: new AnimationController(                  //new
        duration: new Duration(milliseconds: 700),                   //new
        vsync: this,                                                 //new
      )
    );
    
    setState(() {
      _messages.insert(0, chatMessage);
    });

    chatMessage.animationController.forward();
    _hasFocus = true;

    _controller.clear();
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages) {
      message.animationController.dispose();
    }

    super.dispose();
  }


}