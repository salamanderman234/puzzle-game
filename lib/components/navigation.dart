import 'package:flutter/material.dart';
import 'package:puzzle/components/button.dart';

class DefaultNavigationBar extends StatelessWidget {
  final Text title;

  const DefaultNavigationBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FitButton(
              text: const Text("Kembali"),
              onPressed: (() {
                Navigator.pop(context);
              }))
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Center(
            child: title,
          ),
          const SizedBox(height: 50)
        ],
      )
    ]);
  }
}
