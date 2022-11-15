import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo_hw/Onboarding/onboarding.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NT On Board Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Onboarding(),
    );
  }
}
