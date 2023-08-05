import 'package:flutter/material.dart';

void main() {
  runApp(const RippleApp());
}

class RippleApp extends StatelessWidget {
  const RippleApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ripple Effect Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RippleHome(),
    );
  }
}

class RippleHome extends StatefulWidget {
  const RippleHome({super.key});
  @override
  State<StatefulWidget> createState() => RippleHomePage();
}

class RippleHomePage extends State<RippleHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  var rippleRadius = [
    100.0,
    150.0,
    200.0,
    250.0,
    300.0,
    250.0,
    300.0,
    350.0,
    400.0
  ];

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 4), lowerBound: 0.5);

    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ripple Effect Animation"),
      ),
      body: Center(
          child: Stack(alignment: Alignment.center, children: [
        ...rippleRadius
            .map(
              (radius) => Container(
                width: radius * _animationController.value,
                height: radius * _animationController.value,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                        .withOpacity(1.0 - _animationController.value)),
              ),
            )
            .toList(),
        const Icon(
          Icons.phonelink_ring,
          size: 40,
          color: Colors.white,
        ),
      ])),
    );
  }
}
