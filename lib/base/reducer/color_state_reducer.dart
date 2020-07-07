import 'package:Redux/base/state/color_state.dart';
import 'package:redux/redux.dart';
import 'package:Redux/base/action/actions.dart';

// parttern match by type (like haskell)
final colorStateReducer = combineReducers<ColorState>([
  TypedReducer<ColorState, ToggleDarkMode>((state, action) {
    return state.copyWidth(isDarkMode_: !state.isDarkMode);
  }),
]);
