import 'package:flutter/material.dart';
import 'package:puzzle/components/button.dart';
import 'package:puzzle/pages/level_list.page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(40),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(215, 116, 84, 249),
                Color.fromARGB(215, 115, 17, 176)
              ])),
          child: Stack(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                DefaultButton(
                    onPressed: () {},
                    color: Colors.grey,
                    paddingX: 10,
                    text: const Text(
                      "Settings",
                      style: TextStyle(
                          fontFamily: "Modak",
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 1.5),
                    )),
                DefaultButton(
                    onPressed: () {},
                    color: Colors.blue,
                    paddingX: 10,
                    text: const Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: "Modak",
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 1.5),
                    ))
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Puzzle.in",
                    style: TextStyle(
                        fontFamily: "Modak", fontSize: 60, color: Colors.white),
                  ),
                  Column(children: [
                    DefaultButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LevelListPage(
                                      difficulty: "Easy",
                                    )));
                      },
                      color: Colors.red,
                      text: const Text(
                        "Main",
                        style: TextStyle(
                            fontFamily: "Modak",
                            color: Colors.white,
                            fontSize: 26,
                            letterSpacing: 1.5),
                      ),
                      fullWidth: true,
                    ),
                    DefaultButton(
                      onPressed: () {},
                      color: Colors.amber,
                      text: const Text(
                        "Buat Room",
                        style: TextStyle(
                            fontFamily: "Modak",
                            color: Colors.white,
                            fontSize: 26,
                            letterSpacing: 1.5),
                      ),
                      fullWidth: true,
                    ),
                    DefaultButton(
                      onPressed: () {},
                      color: Colors.green,
                      text: const Text(
                        "Ikuti",
                        style: TextStyle(
                            fontFamily: "Modak",
                            color: Colors.white,
                            fontSize: 26,
                            letterSpacing: 1.5),
                      ),
                      fullWidth: true,
                    )
                  ]),
                ],
              ),
            ],
          )),
    );
  }
}
