import 'package:flutter/material.dart';

import 'hero_details_page.dart';

void main() {
  runApp(const HeroApp());
}

class HeroApp extends StatelessWidget {
  const HeroApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hero Animation",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const HeroScreen());
  }
}

class HeroScreen extends StatefulWidget {
  const HeroScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HeroScreenHome();
  }
}

class HeroScreenHome extends State<HeroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Page"),
      ),
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const HeroDetailsScreen()));
        },
        child: Hero(
          tag: 'heroanimation',
          child: Image.asset(
            'assets/images/akash-kumar.jpg',
            width: 100,
            height: 100,
          ),
        ),
      )),
    );
  }
}
