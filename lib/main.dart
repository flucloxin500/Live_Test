import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:live_test/weather_info_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherMainScreen(),
    );
  }
}
