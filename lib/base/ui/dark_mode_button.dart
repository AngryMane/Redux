import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:Redux/base/state/app_state.dart';
import 'package:Redux/base/action/actions.dart';

class DarkModeButton extends StatelessWidget {
  DarkModeButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundRect = StoreConnector<AppState, Color>(
      distinct: true,
      converter: (store) => store.state.colorState.primaryColor,
      builder: (context, data) {
        return Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            color: data,
            borderRadius: BorderRadius.circular(10),
          ),
        );
      },
    );

    Widget darkModeStateText = StoreConnector<AppState, bool>(
      distinct: true,
      converter: (store) => store.state.colorState.isDarkMode,
      builder: (context, data) {
        return Text((data) ? "DarkMode On" : "DarkMode Off");
      },
    );

    final store = StoreProvider.of<AppState>(context);
    Widget button = GestureDetector(
      child: Stack(
        children: [backgroundRect, darkModeStateText],
      ),
      onTap: () {
        store.dispatch(ToggleDarkMode());
      },
    );

    return Container(
      child: button,
      width: 100,
      height: 100,
    );
  }
}
