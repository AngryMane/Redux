import 'package:Redux/state/car_state.dart';
import 'package:redux/redux.dart';
import 'package:Redux/action/actions.dart';
import 'dart:developer';
import 'dart:isolate';

// parttern match by type (like haskell)
final carStateReducer = combineReducers<CarState>([
  TypedReducer<CarState, ToggleAircon>(
      (state, action) => state.copyWith(aircon_: !state.aircon)),
  TypedReducer<CarState, WebSocketTestAction>((state, action) {
    // This function effect to external module of redux.(e.g. websocket module)
    print(action.testData);
    print(Service.getIsolateID(Isolate.current));
    return state;
  }),
]);
