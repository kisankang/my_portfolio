import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData.from(
  colorScheme: ColorScheme.lerp(
    ColorScheme.fromSeed(seedColor: Colors.red),
    ColorScheme.fromSeed(seedColor: Colors.blue),
    0.1,
  ),
);
