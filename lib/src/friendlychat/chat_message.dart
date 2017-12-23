part of friendlychat;

class ChatMessage extends StatelessWidget {
  final String message;
  ChatMessage({this.message});

  @override
  Widget build(BuildContext context) {
    return buildUi();
  }

  Widget buildUi() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Container(
            child: new CircleAvatar(
              child: new Text("T"),
            ),
          ),

          new Column(
            children: <Widget>[
              new Text(message)
            ],
          )
        ],
      ),
    );
  }
}