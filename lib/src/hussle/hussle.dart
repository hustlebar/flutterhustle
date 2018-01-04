library hussle;

import 'package:flutter/material.dart';

part 'layout/hussle_scaffold.dart';

class HussleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hussle Bar',
      home: new HussleScaffold(),
    );
  }
}
