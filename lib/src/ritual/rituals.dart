library rituals;

import 'package:flutter/material.dart';
import 'package:flutterhustle/src/ritual/pages/welcome.dart';

class RitualsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return MaterialApp(
      title: 'Rituals',
      home: WelcomePage(),
    );
  }
}