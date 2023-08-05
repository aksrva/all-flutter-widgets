import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:widgets/custom/_textStyle.dart';
import 'package:intl/intl.dart';
import 'package:widgets/widgets/_roundedButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final logger = Logger();

void main() {
  runApp(const MyApp());
}

bool obscure = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Widgets Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

var emailController = TextEditingController();
var passworddController = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var userInfo = [
      {
        "username": "Akash Kumar",
        "desc": "Welcome to the Flutter List View Builder Widgets",
      },
      {
        "username": "Vikas Kumar",
        "desc": "Hello My name is Vikas Kumar",
      },
      {
        "username": "Aditya Kumar",
        "desc": "This side is Aditya Kumar",
      },
      {
        "username": "Tushar Chauhan",
        "desc": "Hello I am Tushar Chauhan.",
      },
      {
        "username": "Gaurav Kumar",
        "desc": "Hello Mr. Gaurav Kumar.",
      },
    ];

    var time = DateTime.now();
    var months = [
      "January",
      "Feburary",
      "March",
      "April",
      "May",
      "June",
      "July",
      "August",
      "September",
      "October",
      "November",
      "December"
    ];
    var days = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];
    // Timer timer = Timer(const Duration(seconds: 1), () {
    //   logger.i("Hellow");
    // });

    // Timer.periodic(const Duration(seconds: 1), (timer) {
    //   setState(() {});
    // });
    callBack() {
      logger.i("Clicked By Akash");
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // ! Body for widgets text, textbutton, elevatedbutton, outlinedbutton, image
      /* body: Center(
      //   child: Container(
      //     // height: 200,
      //     // width: 200,
      //     // color: Colors.blue,
      //     //! Text Widget
      //     // child: const Center(
      //     //     child: Text(
      //     //   "Container",
      //     //   style: TextStyle(
      //     //       fontSize: 25,
      //     //       color: Colors.white,
      //     //       fontWeight: FontWeight.w800,
      //     //       backgroundColor: Colors.orange),
      //     // )),
      //     //! Text Widget

      //     //? TextButton Widget
      //     // child: TextButton(
      //     //   child: const Text("Text Button"),
      //     //   onPressed: () {
      //     //     print("Clicked Text Button");
      //     //   },
      //     //   onLongPress: () {
      //     //     print("Press long time");
      //     //   },
      //     // )
      //     //? TextButton Widget

      //     // ! ElevatedButton Widget
      //     // child: ElevatedButton(
      //     //   child: const Text("Elevated Button"),
      //     //   onPressed: () => {print("Elevated Button clicked")},
      //     //   onLongPress: () => {print("Long Elevated Pressed")},
      //     // ),
      //     // ! ElevatedButton Widget

      //     // ? ElevatedButton Widget
      //     // child: OutlinedButton(
      //     //     child: const Text("Outlined Button"),
      //     //     onPressed: () => {print("outline button clicked")}),
      //     // ? ElevatedButton Widget

      //     //! Image Widget
      //     child: Image.asset('assets/images/akash-kumar.jpg'),
      //     //! Image Widget
      //   ),
      // ),

    */
      // ! Body for widgets text, textbutton, elevatedbutton, outlinedbutton, image

      //? Row and Columns Widgets
      /*
        body: Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[350],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "A1",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "A2",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "A3",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "A4",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                const Text(
                  "A5",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    logger.i("print");
                  },
                  child: const Text("data"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/akash-kumar.jpg',
                          width: MediaQuery.of(context).size.width / 3.5,
                        ),
                        const Text(
                          "Image 1",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                    SizedBox(
                      child: Column(children: [
                        Image.asset(
                          'assets/images/akash-kumar.jpg',
                          width: MediaQuery.of(context).size.width / 3.5,
                        ),
                        const Text(
                          "Image 2",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                    SizedBox(
                      child: Column(children: [
                        Image.asset(
                          'assets/images/akash-kumar.jpg',
                          width: MediaQuery.of(context).size.width / 3.5,
                        ),
                        const Text(
                          "Image 3",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            )
            )
            */

      //? Row and Columns Widdgets

// ! Inkwell Widget
/*
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: InkWell(
            onTap: () => {logger.i("Tapped on Image")},
            onLongPress: () => {logger.i("Long Pressed on image")},
            onDoubleTap: () => {logger.i("Double Tapped on Image")},
            child: Image.asset('assets/images/akash-kumar.jpg'),
          ),
        ),
      ),
      */
// ! Inkwell Widget

// ? Single View Scroll view
      /* body: Container(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.red,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.green,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 200,
                          width: 200,
                          color: Colors.yellow,
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 0),
                          height: 200,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.yellow,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.pink,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.brown,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.black,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 200,
                  color: Colors.lightGreen,
                ),
              ],
            ),
          ),
        )
        */
// ? Single View Scroll view

// ! List View Widget
/*
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 60,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Akash Kumar".toUpperCase(),
                            style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text(
                            "Welcome to the flutter Listview Widgets.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      */
// ! List View Widget

// ? List view Builder
/*
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueAccent,
              margin: const EdgeInsets.only(bottom: 5),
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userInfo[index]["username"]!.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          userInfo[index]["desc"]!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ));
        },
        itemCount: userInfo.length,
      ),
      */
// ? List view Builder

// ! List View Seperated
/*
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blueAccent,
              margin: const EdgeInsets.only(bottom: 5),
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      'assets/images/akash-kumar.jpg',
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userInfo[index]["username"]!.toUpperCase(),
                          style: const TextStyle(
                              // color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          userInfo[index]["desc"]!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  )
                ],
              ));
        },
        itemCount: userInfo.length,
        separatorBuilder: (context, index) {
          return const Divider(height: 4);
        },
      ),
*/
// ! List View Seperated

// ? Container Decoration
/*
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blue.shade50,
        child: Center(
            child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            // borderRadius: BorderRadius.circular(10),
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(100),
                topRight: Radius.circular(100)),
            border:
                Border.all(width: 5, color: Color.fromARGB(188, 17, 79, 187)),

            boxShadow: const [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 15,
                color: Color.fromARGB(91, 77, 1, 1),
              )
            ],
            // shape: BoxShape.circle,
          ),
        )),
      ),
      */
// ? Container Decoration

// ! Expanded Widgets
/*
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            height: 100,
            color: Colors.orange,
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 100,
            color: Colors.blue,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 100,
            color: Colors.green,
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            height: 100,
            color: Colors.deepOrange,
          ),
        ),
      ]),
      */
// ! Expanded Widgets

// ? Padding and Margin
/*
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          "This is the Text",
          style: TextStyle(
            backgroundColor: Colors.deepOrange,
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
      */
/*
      body: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Colors.deepOrange,
          boxShadow: [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            onTap: () => {logger.i("Hello")},
            child: const Text(
              "This is the Text",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      */
// ? Padding and Margin

// ! List Tile in List View
/*
      body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset('assets/images/akash-kumar.jpg'),
              title: Text(userInfo[index]["username"]!.toUpperCase()),
              subtitle: Text(userInfo[index]["desc"]!),
              trailing: const Icon(Icons.add),
            );
          },
          itemCount: userInfo.length),
          */
// ! List Tile in List View

// ? Circle Avatar
/*
      body: const Center(
          child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/akash-kumar.jpg'),
            radius: 80,
            foregroundColor: Colors.red,
          ),
          Text(
            "Akash Kumar",
            style: TextStyle(fontSize: 30, fontFamily: 'Borel'),
          )
        ],
      )),
      */
// ? Circle Avatar

// ! Flutter Style and Theme
/*
      body: Column(
        children: [
          Text(
            "Text 1",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Text 2",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(color: Colors.red),
          ),
          Text(
            "Text 3",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Text(
            "Text 4",
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            "Text 5",
            style: superLargeText(textColor: Colors.purpleAccent),
          ),
        ],
      ),
      */
// ! Flutter Style and Theme

// ? Flutter Card Widget
/*
      body: const Center(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/akash-kumar.jpg'),
                        radius: 50,
                      ),
                      Text(
                        "Akash Kumar",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/akash-kumar.jpg'),
                        radius: 50,
                      ),
                      Text(
                        "Akash Kumar",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      */
// ? Flutter Card Widget

// ! Flutter TextField Widget
/*
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  prefixIcon: const Icon(Icons.email),
                ),
              ),
              Container(
                height: 10,
              ),
              TextField(
                obscureText: obscure,
                controller: passworddController,
                decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                        setState(() {
                          obscure = obscure == true ? false : true;
                        });
                      },
                    )),
              ),
              Container(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    logger.i(
                        "Email : ${emailController.text} \nPassword : ${passworddController.text}");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "Email : ${emailController.text}:\nPassword : ${passworddController.text}"),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: const BorderSide(color: Colors.blue)),
                    ),
                  ),
                  child: const Text(
                    "SUBMIT",
                    style: TextStyle(letterSpacing: 2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      */
// ! Flutter TextField Widget

//? Flutter Date time
/*
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Current Time: $time",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Month : ${months[time.month - 1]}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Year : ${time.year}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Date : ${time.day}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Day : ${days[time.weekday - 1]}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Time : ${time.hour} : ${time.minute < 10 ? '0${time.minute}' : time.minute} : ${time.second < 10 ? '0${time.second}' : time.second}",
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("Reload"),
            ),
          )
        ],
      )),
      */
//? Flutter Date time

// ! Flutter Date Format (intl)
/*
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Current Time : ${DateFormat('jms').format(time)}",
            style: const TextStyle(fontSize: 22),
          ),
          Text(
            "Date : ${DateFormat('yMMMd').format(time)}",
            style: const TextStyle(fontSize: 22),
          ),
          Text(
            "Day : ${DateFormat('EEEE').format(time)}",
            style: const TextStyle(fontSize: 22),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text("Reload"))
        ],
      )),
      */
// ! Flutter Date Format (intl)

// ? Flutter Date Time Picker
/*
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Select Date and Time : "),
          ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030));
                if (datePicked != null) {
                  logger.i(
                      "${datePicked.year} / ${datePicked.month} / ${datePicked.day}");
                }
              },
              child: const Text("Select Date")),
          ElevatedButton(
              onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial,
                );
                if (timePicked != null) {
                  logger.i("${timePicked.hour}:${timePicked.minute}");
                }
              },
              child: const Text("Select Time"))
        ],
      )),
      */
// ? Flutter Date Time Picker

// ! Grid View Widget in Flutter
/*
        body: SingleChildScrollView(
            // scrollDirection: Axis.horizontal,
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: 250,
              color: Colors.red[200],
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.amber),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.purple),
                  Container(color: Colors.yellow),
                  Container(color: Colors.greenAccent),
                  Container(color: Colors.deepOrange),
                  Container(color: Colors.brown),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2,
              color: Colors.pink[100],
              child: GridView.extent(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                maxCrossAxisExtent: 150,
                children: [
                  Container(color: Colors.red),
                  Container(color: Colors.amber),
                  Container(color: Colors.blueAccent),
                  Container(color: Colors.purple),
                  Container(color: Colors.yellow),
                  Container(color: Colors.greenAccent),
                  Container(color: Colors.deepOrange),
                  Container(color: Colors.brown),
                ],
              ),
            ),
            Container(
              height: 50,
            ),
            Container(
              height: 400,
              color: Colors.blue[100],
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.blue[200],
                    child: Center(
                        child: Text(
                      "Box${index + 1}",
                      style: TextStyle(fontSize: 20, color: Colors.blue[900]),
                    )),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ))
        */
// ! Grid View Widget in Flutter

// ? Flutter CallBack Fuction
/*
      body: Center(
        child: ElevatedButton(
          onPressed: callBack,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          child: const Text("Click Me!!"),
        ),
      ),
      */
// ? Flutter CallBack Fuction

// ! Splitting Widgets
/*
      body: const SizedBox(
        child: Column(
          children: [
            CustomListStyleTileWidget(),
            CustomImageCardWidget(),
            CustomCategoryListWidget(),
          ],
        ),
      ),
      */
// ! Splitting Widgets

// ? Stack Widget
/*
      body: Center(
        child: Container(
          // color: Colors.blue[50],
          child: Container(
            width: 300,
            height: 200,
            // color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 150,
                      width: 250,
                      color: const Color.fromARGB(94, 22, 201, 97),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 150,
                      width: 250,
                      color: const Color.fromARGB(105, 22, 82, 201),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  bottom: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 150,
                      width: 250,
                      color: const Color.fromARGB(153, 201, 22, 105),
                    ),
                  ),
                ),
                Positioned(
                  right: 40,
                  bottom: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Container(
                      height: 150,
                      width: 250,
                      color: const Color.fromARGB(120, 190, 23, 43),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      */
// ? Stack Widget

// ! Custom Widgets
/*
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: RoundedCustomButton(
                btnName: "Danger Button",
                icon: const Icon(Icons.lock),
                bgColor: Colors.red,
                callBack: () {
                  logger.w("Locked Button");
                },
                textStyle: const TextStyle(color: Colors.white),
              ),
            ),

            // Facebook button login
            SizedBox(
              width: 200,
              child: RoundedCustomButton(
                btnName: "Login to Facebook",
                icon: const Icon(
                  Icons.facebook,
                  color: Colors.white,
                ),
                bgColor: Colors.blue,
                callBack: () {
                  logger.f(
                      "You have been Successfully logged in by the facebook.");
                },
                textStyle: const TextStyle(color: Colors.white),
              ),
            ),

            // Google login Button
            SizedBox(
              width: 200,
              child: RoundedCustomButton(
                btnName: "Login to Google",
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.black,
                ),
                bgColor: Colors.white,
                callBack: () {
                  logger.t("You have been successfully logged in by Google");
                },
                textStyle: const TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        )),
        */
// ! Custom Widgets

// ? Wrap Widgets
/*
      body: Container(
        padding: const EdgeInsets.all(8.5),
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue[100],
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 5,
            alignment: WrapAlignment.start,
            runSpacing: 5,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 61, 34, 32),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.purple,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 19, 4, 72),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.limeAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.teal,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrangeAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 4, 52, 41),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 18, 126, 74),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 98, 17, 11),
              ),
            ],
          ),
        ),
      ),
      */
// ? Wrap Widgets

// ! SizedBox Widgets
/*
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  onPressed: () {},
                  child: const Text("Custom SizedBox!")),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox.square(
              dimension: 150,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[700],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )),
                  onPressed: () {},
                  child: const Text("Square SizedBox!")),
            ),
            const SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                  minHeight: 80, minWidth: 150, maxHeight: 300, maxWidth: 300),
              child: SizedBox.shrink(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                    onPressed: () {},
                    child: const Text("Shrink Sizedbox!")),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200, maxWidth: 300),
              child: SizedBox.expand(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                    onPressed: () {},
                    child: const Text("Expand SizedBox!")),
              ),
            ),
          ],
        ),
      ),
      */
// ! SizedBox Widgets

// ? Rich Text Widgets
/*
      body: Center(
        child: RichText(
          text: TextSpan(
            // style: DefaultTextStyle.of(context).style,
            style: const TextStyle(color: Colors.black, fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                  text: "Hello", style: TextStyle(color: Colors.grey[800])),
              TextSpan(
                  text: " Flutter!",
                  style: TextStyle(color: Colors.blue[900], fontSize: 40)),
            ],
          ),
        ),
      ),
      */
// ? Rich Text Widgets

// ! Icon Widget
/*
      body: Center(
          child: Column(
        children: [
          const Icon(
            Icons.usb_rounded,
            size: 80,
            color: Colors.blue,
            shadows: [
              BoxShadow(
                  color: Colors.blueAccent, blurRadius: 10, spreadRadius: 15)
            ],
          ),
          FaIcon(
            FontAwesomeIcons.solidUser,
            color: Colors.amber[800],
            size: 60,
          )
        ],
      )),
      */
// ! Icon Widget

// ? Positioned Widget
/*
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[100],
        child: Stack(children: [
          Positioned(
            right: 20,
            bottom: 30,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Icon(
                Icons.add,
                size: 60,
                color: Colors.blue[200],
              ),
            ),
          ),
        ]),
      ),
      */
// ? Positioned Widget

// ! Scroll Wheel List View Widget
/*
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListWheelScrollView(
          itemExtent: 150,
          children: months
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            spreadRadius: 1,
                          )
                        ],
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text(
                        item,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          // children: [
          // Container(
          //   width: MediaQuery.of(context).size.width,
          //   color: Colors.red,
          // ),
          // ],
        ),
      ),
*/
// ! Scroll Wheel List View Widget

// ? ClipRRect Widgets
/*
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 2)],
          ),
          child: ClipRRect(
            // borderRadius: BorderRadius.all(Radius.elliptical(100, 50)),
            // borderRadius: BorderRadius.circular(50),
            // borderRadius: BorderRadius.horizontal(left: Radius.circular(30), right: Radius.circular(50)),
            // borderRadius: BorderRadius.lerp(
            //     BorderRadius.circular(10), BorderRadius.circular(20), 1),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            // child: Container(
            //   width: 200,
            //   height: 200,
            //   color: Colors.blue,
            // ),
            child: Image.asset(
              'assets/images/akash-kumar.jpg',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
      */
// ? ClipRRect Widgets

//! Gradiant Color
/*
        body: Container(
          decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            // Color(0xFFF44336),
            // Colors.yellow,
            //   ],
            //   begin: FractionalOffset(0.0, 0.0),
            //   end: FractionalOffset(1.0, 1.0),
            // ),

            gradient: RadialGradient(
              colors: [
                Color(0xFFF44336),
                Colors.yellow,
              ],
              center: Alignment.topRight,
            ),
          ),
        )
        */
//! Gradiant Color

// ? Build List view using map method
/*
      body: ListView(
        children: userInfo
            .map((value) => Container(
                  color: Colors.blue,
                  margin: EdgeInsets.only(bottom: 5),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      // child: Image.asset('assets/images/akash-kumar.jpg'),
                      backgroundImage:
                          AssetImage('assets/images/akash-kumar.jpg'),
                    ),
                    title: Text(value['username'].toString()),
                    subtitle: Text(value['desc'].toString()),
                    trailing: const Icon(Icons.delete),
                  ),
                ))
            .toList(),
      ),
      */
// ? Build List view using map method

// ! Tween Animation
      body: Container(),
// ! Tween Animation
    );
  }
}

class CustomCategoryListWidget extends StatelessWidget {
  const CustomCategoryListWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 100,
        color: Colors.blue,
        child: ListView.builder(
          itemBuilder: (context, index) => const SizedBox(
            width: 100,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: CircleAvatar(backgroundColor: Colors.red),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class CustomListStyleTileWidget extends StatelessWidget {
  const CustomListStyleTileWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        height: 100,
        color: Colors.blue[100],
        child: ListView.builder(
          itemBuilder: (context, index) => SizedBox(
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  size: 40,
                ),
                title: Text(
                  "Title ${index + 1}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "This is the subtitle ${index + 1}",
                  style: const TextStyle(fontSize: 18),
                ),
                trailing: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class CustomImageCardWidget extends StatelessWidget {
  const CustomImageCardWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 250,
        padding: const EdgeInsets.all(10),
        color: Colors.orange[100],
        child: ListView.builder(
          itemBuilder: (context, index) => SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/akash-kumar.jpg'),
              ),
            ),
          ),
          itemCount: 20,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
