import 'package:flutter/foundation.dart';
import 'package:Redux/base/state/car_state.dart';
import 'package:Redux/base/state/color_state.dart';

@immutable
class AppState {
  final CarState carState;
  final ColorState colorState;

  factory AppState.init() => const AppState();

  const AppState({
    this.carState = const CarState(),
    this.colorState = const ColorState(),
  });

  AppState copyWidth({CarState carSteat_, ColorState colorState_}) {
    return AppState(
        carState: carSteat_ ?? this.carState,
        colorState: colorState_ ?? this.colorState);
  }
}
