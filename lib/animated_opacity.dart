import 'package:flutter/material.dart';

void main() {
  runApp(const FooOpacityAnimate());
}

class FooOpacityAnimate extends StatelessWidget {
  const FooOpacityAnimate({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foo Opacity Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const FooOpacityScreen(),
    );
  }
}

class FooOpacityScreen extends StatefulWidget {
  const FooOpacityScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return FooOpacityHome();
  }
}

class FooOpacityHome extends State<FooOpacityScreen> {
  double opcty = 1;
  var opctyController = TextEditingController();
  var message = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Foo Animation Opacity"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            curve: Curves.bounceIn,
            opacity: opcty,
            duration: const Duration(seconds: 1),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.purple,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 100,
            child: TextField(
                controller: opctyController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: "Opacity")),
          ),
          ElevatedButton(
            onPressed: () {
              double y = double.parse(opctyController.text);
              if (y >= 0.0 && y <= 1.0) {
                opcty = y;
              } else {
                message = "Please Enter the value between 0-1.0";
              }
              setState(() {});
            },
            child: const Text("Animate"),
          ),
          Text(message),
        ],
      )),
    );
  }
}
