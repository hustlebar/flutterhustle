library friendlychat;

import 'package:flutter/material.dart';

part 'chat_screen.dart';

class FriendlyChatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Friendly Chat',
      home: new ChatScreen()
    );
  }
}