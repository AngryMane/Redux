import 'package:Redux/action/actions.dart';
import 'package:flutter/material.dart';
import 'package:Redux/ui/aircon_button.dart';
import 'package:Redux/ui/dark_mode_button.dart';

class Root extends StatelessWidget {
  Root({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(children: [
      AirconButton(),
      DarkModeButton(),
    ]));
  }
}
