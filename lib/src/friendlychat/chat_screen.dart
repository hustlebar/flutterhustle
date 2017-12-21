part of friendlychat;

class ChatScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ChatState();
  }
}

class ChatState extends State<ChatScreen> {
  final TextEditingController controller_ = new TextEditingController();

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
    return new Container(
      child: new TextField(
        controller: controller_,
        onSubmitted: onSubmit,
      ),
    );
  }

  void onSubmit(String text) {
    print("Value ${text}");
  }
}

