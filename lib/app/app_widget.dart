import 'package:astalania/app/pages/home_page.dart';
import 'package:flutter/material.dart';

class AstalaniaApp extends StatelessWidget {
  const AstalaniaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeData(
          colorSchemeSeed: Colors.blue,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
    );
  }
}
