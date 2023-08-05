// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';

import 'calculator.dart';

class SplashAcitivity extends StatefulWidget {
  const SplashAcitivity({super.key});

  @override
  State<SplashAcitivity> createState() => _SplashAcitivityState();
}

class _SplashAcitivityState extends State<SplashAcitivity> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return CalculatorIntro();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
            child: Text(
          "lapmos.com",
          style:
              TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Borel'),
        )),
      ),
    );
  }
}
