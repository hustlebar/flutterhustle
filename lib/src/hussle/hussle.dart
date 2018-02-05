library hussle;

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';

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
part 'linear/card.dart';
part 'linear/progress.dart';
part 'linear/divider.dart';
part 'linear/textfield.dart';

part 'container/expansion_panel.dart';
part 'container/snackbar.dart';
part 'container/datatable.dart';
part 'container/list_tile.dart';
part 'container/stepper.dart';

part 'navigation/main.dart';
part 'navigation/first.dart';
part 'navigation/second.dart';

part 'custom/favorite.dart';

class HussleApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hussle Bar',
      home: new HussleScaffold(),
      routes: <String, WidgetBuilder> {
        'main': (BuildContext context) => new MainPage(),
        'first': (BuildContext context) => new FirstPage(),
        'second': (BuildContext context) => new SecondPage()
      },
    );
  }
}
