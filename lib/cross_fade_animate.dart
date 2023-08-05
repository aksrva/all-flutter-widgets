import 'package:flutter/material.dart';

void main() {
  runApp(CrossFadeApp());
}

class CrossFadeApp extends StatelessWidget {
  const CrossFadeApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foo CrossFade Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: CrossFadeHome(),
    );
  }
}

class CrossFadeHome extends StatefulWidget {
  const CrossFadeHome({super.key});
  @override
  State<StatefulWidget> createState() {
    return CrossFadeHomeActivity();
  }
}

class CrossFadeHomeActivity extends State<CrossFadeHome> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cross Fade Animation"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedCrossFade(
            firstCurve: Curves.bounceIn,
            secondCurve: Curves.elasticIn,
            duration: const Duration(seconds: 1),
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.orange[300],
            ),
            secondChild: Image.asset(
              'assets/images/akash-kumar.jpg',
              width: 200,
              height: 200,
            ),
            crossFadeState:
                isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                isFirst = isFirst == true ? false : true;
                setState(() {});
              },
              child: const Text('CrossFade'),
            ),
          )
        ],
      )),
    );
  }
}
