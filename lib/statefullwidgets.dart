import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Stateful Widgets",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: StatefullHome(),
    );
  }
}

class StatefullHome extends StatefulWidget {
  const StatefullHome({super.key});
  @override
  // State<StatefulWidget> createState() {
  //   return MyHomeState();
  // }
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<StatefullHome> {
  int _counter = 0;
  _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "You have been pushed button time : ",
                style: TextStyle(fontSize: 23),
              ),
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 35, color: Colors.blue[900]),
              ),
              ElevatedButton(
                onPressed: () {
                  _increment();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white),
                child: const Text("Click"),
              ),
            ],
          ),
        ));
  }
}
