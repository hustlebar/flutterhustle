library friendlychat;

import 'package:flutter/material.dart';

part 'chat_screen.dart';

class FriendlyChat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Friendly Chat',
      home: new ChatScreen(),
    );
  }
}