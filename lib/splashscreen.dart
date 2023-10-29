import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:lottie/lottie.dart';

import 'package:rentabike/first.dart';

class cartsplashScreen extends StatefulWidget {
  const cartsplashScreen({super.key});

  @override
  State<cartsplashScreen> createState() => _cartsplashScreenState();
}

class _cartsplashScreenState extends State<cartsplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 2600), (() {
      Fluttertoast.showToast(msg: "Have an Nice Ride ; )");

      Navigator.push(context, MaterialPageRoute(builder: (context) => first()));
    }));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.network(
                "https://lottie.host/d9f438b5-786b-4d66-8e0e-3c8612670b8b/l2dDiEWmh0.json",
                frameRate: FrameRate.max,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
