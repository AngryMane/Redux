import 'package:Redux/state/color_state.dart';
import 'package:redux/redux.dart';
import 'package:Redux/action/actions.dart';

// parttern match by type (like haskell)
final colorStateReducer = combineReducers<ColorState>([
  TypedReducer<ColorState, ToggleDarkMode>((state, action) {
    state.copyWidth(isDarkMode_: !state.isDarkMode);
  }),
]);
