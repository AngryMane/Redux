import 'package:flutter/material.dart';
import 'package:Redux/base/ui/aircon_button.dart';
import 'package:Redux/base/ui/dark_mode_button.dart';

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
