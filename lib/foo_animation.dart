import 'package:flutter/material.dart';

void main() {
  runApp(const FooApp());
}

class FooApp extends StatelessWidget {
  const FooApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Foo Animation",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FooAppHome(),
    );
  }
}

class FooAppHome extends StatefulWidget {
  const FooAppHome({super.key});
  @override
  State<StatefulWidget> createState() => FooAppActivity();
}

class FooAppActivity extends State<FooAppHome> {
  double h = 100, w = 100;
  var heightController = TextEditingController();
  var widthController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Foo Animation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                curve: Curves.elasticInOut,
                duration: const Duration(seconds: 2),
                width: w,
                height: h,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: heightController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Height",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      controller: widthController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Width",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    h = double.parse(heightController.text);
                    w = double.parse(widthController.text);
                    setState(() {});
                  },
                  child: const Text("Animate"))
            ],
          ),
        ));
  }
}
