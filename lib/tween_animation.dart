import 'package:flutter/material.dart';

void main() {
  runApp(TweenApp());
}

class TweenApp extends StatelessWidget {
  const TweenApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tween Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TweenAnimeHome(),
    );
  }
}

class TweenAnimeHome extends StatefulWidget {
  const TweenAnimeHome({super.key});
  @override
  State<StatefulWidget> createState() {
    return TweenAnimeHomePage();
  }
}

class TweenAnimeHomePage extends State<TweenAnimeHome>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    colorAnimation = ColorTween(begin: Colors.amber, end: Colors.deepOrange)
        .animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween Animation"),
      ),
      body: Center(
        child: CircleAvatar(
          radius: animation.value,
          backgroundColor: colorAnimation.value,
        ),
      ),
    );
  }
}
