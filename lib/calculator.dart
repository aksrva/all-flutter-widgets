import 'package:flutter/material.dart';
import 'package:widgets/splashActivity.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calcualtor",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: SplashAcitivity(),
    );
  }
}

// ignore: must_be_immutable
class CalculatorScreen extends StatefulWidget {
  dynamic username;
  CalculatorScreen(this.username, {super.key});
  @override
  State<StatefulWidget> createState() => CalculatorHome(username);
}

class CalculatorIntro extends StatelessWidget {
  const CalculatorIntro({super.key});
  @override
  Widget build(BuildContext context) {
    var usernameController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          title: const Text("Intro page"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.orange[50],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      hintText: "Enter Your name",
                      border: OutlineInputBorder()),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (usernameController.text == "") {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const CalculatorIntro();
                    // }));
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Please Enter your name")));
                    return;
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CalculatorScreen(usernameController.text);
                    }));
                  }
                },
                child: const Text("Jump to Homepage"),
              )
            ],
          ),
        ));
  }
}

class CalculatorHome extends State<CalculatorScreen> {
  dynamic username;
  CalculatorHome(this.username);
  var n1Controller = TextEditingController();
  var n2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Simple Calculator",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Welcome!, $username",
              style: const TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.orange[50],
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: TextField(
                controller: n1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    hintText: "First Number"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: TextField(
                controller: n2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    hintText: "Second Number"),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              child: Wrap(
                spacing: 10,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      result =
                          "Addition of ${n1Controller.text} and ${n2Controller.text} is ${int.parse(n1Controller.text) + int.parse(n2Controller.text)}";
                      setState(() {});
                    },
                    child: const Text("Addition"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      result =
                          "Subtraction of ${n1Controller.text} and ${n2Controller.text} is ${int.parse(n1Controller.text) - int.parse(n2Controller.text)}";
                      setState(() {});
                    },
                    child: const Text("Subtraction"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      result =
                          "Multiplication of ${n1Controller.text} and ${n2Controller.text} is ${int.parse(n1Controller.text) * int.parse(n2Controller.text)}";
                      setState(() {});
                    },
                    child: const Text("Multiply"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      result =
                          "Division of ${n1Controller.text} and ${n2Controller.text} is ${(int.parse(n1Controller.text) / int.parse(n2Controller.text)).toStringAsFixed(2)}";
                      setState(() {});
                    },
                    child: const Text("Divide"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                result,
                style: TextStyle(fontSize: 20, color: Colors.blue[900]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
