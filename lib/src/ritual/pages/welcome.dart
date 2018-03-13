import 'package:flutter/material.dart';
import 'package:rituals/rituals.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildUi();
  }

  Widget _buildUi() {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Center(
            child: RitualsField()
          )
        ],
      ),
    );
  }
}