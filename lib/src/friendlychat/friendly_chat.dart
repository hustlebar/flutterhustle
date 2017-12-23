library friendlychat;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

part 'chat_screen.dart';
part 'chat_message.dart';

class FriendlyChat extends StatelessWidget {
  TargetPlatform defaultTargetPlatform = TargetPlatform.iOS;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Friendly Chat',
      home: new ChatScreen(),
      theme: defaultTargetPlatform == TargetPlatform.iOS
        ? kIOSTheme
        : kDefaultTheme,
    );
  }
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);