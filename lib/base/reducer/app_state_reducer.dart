import 'package:Redux/base/state/app_state.dart';
import 'package:Redux/base/reducer/car_state_reducer.dart';
import 'package:Redux/base/reducer/color_state_reducer.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    carState: carStateReducer(state.carState, action),
    colorState: colorStateReducer(state.colorState, action),
  );
}
