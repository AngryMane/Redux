import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:Redux/state/app_state.dart';
import 'package:Redux/action/actions.dart';

class AirconButton extends StatelessWidget {
  AirconButton({Key key}) : super(key: key);

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

    Widget airconStateText = StoreConnector<AppState, bool>(
      distinct: true,
      converter: (store) => store.state.carState.aircon,
      builder: (context, data) {
        return Text((data) ? "Aircon On" : "Aircon Off");
      },
    );

    final store = StoreProvider.of<AppState>(context);
    Widget button = GestureDetector(
      child: Stack(
        children: [backgroundRect, airconStateText],
      ),
      onTap: () {
        //store.dispatch(ToggleAircon());
        store.dispatch(WebSocketTestAction(testData: "onWeb"));
      },
    );

    return Container(
      child: button,
      width: 100,
      height: 100,
    );
  }
}
