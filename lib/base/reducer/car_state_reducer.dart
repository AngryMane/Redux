import 'package:Redux/base/state/car_state.dart';
import 'package:redux/redux.dart';
import 'package:Redux/base/action/actions.dart';

// parttern match by type (like haskell)
final carStateReducer = combineReducers<CarState>([
  TypedReducer<CarState, ToggleAircon>(
      (state, action) => state.copyWith(aircon_: !state.aircon)),
]);
