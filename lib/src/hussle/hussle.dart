library hussle;

import 'package:flutter/material.dart';
import 'dart:async';

part 'layout/hussle_scaffold.dart';
part 'linear/hussle_button.dart';
part 'linear/input.dart';
part 'linear/checkbox.dart';
part 'linear/switch.dart';
part 'linear/slider.dart';
part 'linear/radio.dart';
part 'linear/datepicker.dart';
part 'linear/timepicker.dart';
part 'linear/dialog.dart';
part 'linear/alertdialog.dart';
part 'linear/icon.dart';
part 'linear/chip.dart';

part 'container/expansion_panel.dart';
part 'container/snackbar.dart';
part 'container/datatable.dart';

class HussleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hussle Bar',
      home: new HussleScaffold(),
    );
  }
}
