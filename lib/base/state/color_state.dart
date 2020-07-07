import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class ColorState {
  final bool isDarkMode;
  final Color primaryColor;
  final Color secondaryColor;

  const ColorState(
      {this.isDarkMode = false,
      this.primaryColor = Colors.grey,
      this.secondaryColor = Colors.green});

  ColorState copyWidth(
      {bool isDarkMode_, Color primaryColor_, Color secondaryColor_}) {
    return ColorState(
        isDarkMode: isDarkMode_ ?? this.isDarkMode,
        primaryColor: isDarkMode_ ? Colors.brown : Colors.grey,
        secondaryColor: isDarkMode_ ? Colors.lightGreen : Colors.green);
  }
}
