library rituals;

import 'package:flutter/material.dart';

part 'pages/welcome.dart';

//widgets module
part 'widgets/rituals_container.dart';
part 'widgets/ritual_text.dart';

class RitualsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return new MaterialApp(
      title: 'Rituals',
      home: new WelcomePage(),
    );
  }
}