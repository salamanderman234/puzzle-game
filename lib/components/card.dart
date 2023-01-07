import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CompletedLevelCard extends StatelessWidget {
  final String levelNum;
  const CompletedLevelCard({super.key, required this.levelNum});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0))),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
      onPressed: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Level $levelNum",
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
          )
        ],
      ),
    );
  }
}
