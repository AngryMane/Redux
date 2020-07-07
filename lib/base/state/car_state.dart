import 'package:flutter/foundation.dart';

@immutable
class CarState {
  final int carSpeed;
  final int accelPedal;
  final int handleAngle;
  final bool aircon;

  const CarState(
      {this.accelPedal = 0,
      this.carSpeed = 0,
      this.handleAngle = 0,
      this.aircon = false});

  CarState copyWith(
      {int carSpeed_, int accelPedal_, int handleAngle_, bool aircon_}) {
    return CarState(
        carSpeed: carSpeed_ ?? this.carSpeed,
        accelPedal: accelPedal_ ?? this.accelPedal,
        handleAngle: handleAngle_ ?? this.handleAngle,
        aircon: aircon_ ?? this.aircon);
  }
}
