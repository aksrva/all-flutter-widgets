// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RoundedCustomButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const RoundedCustomButton(
      {super.key,
      required this.btnName,
      this.bgColor = Colors.blue,
      this.icon,
      this.textStyle,
      this.callBack});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
      ),
      child: icon != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                const SizedBox(
                  width: 11,
                ),
                Text(
                  btnName,
                  style: textStyle,
                ),
              ],
            )
          : SizedBox(
              child: Text(
                btnName,
                style: textStyle,
              ),
            ),
    );
  }
}
