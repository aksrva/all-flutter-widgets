import 'package:flutter/material.dart';

class HeroDetailsScreen extends StatelessWidget {
  const HeroDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Details Page"),
      ),
      body: Hero(
        tag: 'heroanimation',
        child: Column(children: [
          Image.asset('assets/images/akash-kumar.jpg'),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                    children: [
                  const TextSpan(text: "Hello! My name is "),
                  TextSpan(
                      text: "Akash kumar.",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      )),
                  const TextSpan(text: "\nI am a Full Stack Developer."),
                  TextSpan(
                      text: "\n\nMy skills...",
                      style: TextStyle(fontSize: 22, color: Colors.blue[900])),
                  const TextSpan(
                      text:
                          "\n- HTML\n- CSS\n- JavaScript\n- MEAN Stack\n- Java\n- Flutter",
                      style: TextStyle(fontSize: 18)),
                ])),
          )
        ]),
      ),
    );
  }
}
