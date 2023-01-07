import 'package:flutter/material.dart';

class DefaultBackground extends StatelessWidget {
  final EdgeInsets padding;
  final Color fromColor;
  final Color toColor;
  final Widget child;
  // constructor
  const DefaultBackground(
      {super.key,
      this.padding = const EdgeInsets.all(10),
      this.fromColor = const Color.fromARGB(215, 116, 84, 249),
      this.toColor = const Color.fromARGB(215, 115, 17, 176),
      required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[fromColor, toColor])),
      child: child,
    );
  }
}
