import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(RangeSliderHome());
}

class RangeSliderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Range Slider app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RangeSliderActivity(),
    );
  }
}

class RangeSliderActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RangeSliderActivityOp();
}

class RangeSliderActivityOp extends State<RangeSliderActivity> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ranger Slider"),
      ),
      body: Center(
        child: RangeSlider(
          values: values,
          labels: labels,
          divisions: 100,
          activeColor: Colors.amber,
          inactiveColor: Colors.amber.shade200,
          min: 0,
          max: 100,
          onChanged: (newValue) {
            values = newValue;
            setState(() {});
            logger.i("Start : ${values.start} and End : ${values.end}");
          },
        ),
      ),
    );
  }
}
