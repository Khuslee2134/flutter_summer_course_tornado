import 'package:day_16_flutter/stop_watch.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StopWatchApp());
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StopWatch(),
    );
  }
}
