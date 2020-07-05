import 'package:Redux/reducer/app_state_reducer.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:Redux/ui/root.dart';
import 'package:Redux/state/app_state.dart';
import 'package:Redux/reducer/app_state_reducer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var store = Store<AppState>(appReducer, initialState: AppState.init());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StoreProvider(store: store, child: Root()),
    );
  }
}
