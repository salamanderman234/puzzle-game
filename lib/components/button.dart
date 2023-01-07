import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DefaultButton extends StatelessWidget {
  final Color color;
  final Color outline;
  final double paddingX, paddingY;
  final Text text;
  final bool fullWidth;

  final Function() onPressed;

  const DefaultButton(
      {super.key,
      this.text = const Text(""),
      this.color = Colors.white,
      this.outline = Colors.black,
      this.paddingX = 0.0,
      this.paddingY = 10,
      this.fullWidth = false,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        width: fullWidth ? double.infinity : null,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(

              // side: MaterialStateProperty.all(
              //     BorderSide(color: outline, width: 3.0)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.fromLTRB(paddingX, paddingY, paddingX, paddingY))),
          child: text,
        ));
  }
}

class FitButton extends StatelessWidget {
  final Text text;
  final Color color;
  final double paddingx, paddingy;
  final double marginx, marginy;
  const FitButton(
      {super.key,
      required this.text,
      this.color = const Color.fromARGB(215, 116, 84, 249),
      this.paddingx = 0.0,
      this.paddingy = 0.0,
      this.marginx = 0.0,
      this.marginy = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: marginx, right: marginx, top: marginy, bottom: marginy),
    );
  }
}
