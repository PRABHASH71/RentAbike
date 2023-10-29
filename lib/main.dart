import 'package:flutter/material.dart';
import 'package:rentabike/HomePage.dart';
import 'package:rentabike/first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "RentABike",
      home: first(),
    );
  }
}
