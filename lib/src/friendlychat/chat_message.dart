part of friendlychat;

class ChatMessage extends StatelessWidget {
  final AnimationController animationController;

  final String message;
  ChatMessage({this.message, this.animationController});

  @override
  Widget build(BuildContext context) {
    return _transition(context);
  }

  Widget _transition(BuildContext context) {
    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
        parent: animationController,
        curve: Curves.easeOut
      ),
      axisAlignment: 0.0,

      child: buildUi(context),
    );
  }

  Widget buildUi(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text("T"),
            ),
          ),

          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(message, style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(message),
              )
            ],
          )
        ],
      ),
    );
  }
}