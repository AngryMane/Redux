import 'package:flutter/foundation.dart';
import 'package:Redux/state/app_state.dart';
import 'package:Redux/reducer/car_state_reducer.dart';
import 'package:Redux/reducer/color_state_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    carState: carStateReducer(state.carState, action),
    colorState: colorStateReducer(state.colorState, action),
  );
}
