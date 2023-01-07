import 'package:flutter/material.dart';
import 'package:puzzle/components/background.dart';
import 'package:puzzle/components/card.dart';
import 'package:puzzle/components/navigation.dart';

class LevelListPage extends StatelessWidget {
  final String difficulty;
  const LevelListPage({super.key, required this.difficulty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultBackground(
          child: ListView(
        children: [
          DefaultNavigationBar(
              title: Text(
            difficulty,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          )),
          const SizedBox(height: 40),
          GridView.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(9, (index) {
              int level = index + 1;
              return CompletedLevelCard(levelNum: "$level");
            }),
          )
        ],
      )),
    );
  }
}
