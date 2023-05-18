import 'package:flutter/material.dart';
import './screen/home.dart';

void main() {
  runApp(const MyApp());
}

// const String locationNow = 'Hanoi';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Weather App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
