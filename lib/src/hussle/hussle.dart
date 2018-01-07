library hussle;

import 'package:flutter/material.dart';

part 'layout/hussle_scaffold.dart';
part 'linear/hussle_button.dart';
part 'linear/input.dart';

class HussleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hussle Bar',
      home: new HussleScaffold(),
    );
  }
}
