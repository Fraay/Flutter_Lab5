import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = randomizer.nextInt(3);

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/img$currentDiceRoll.png',
          width: 700,
        ),
        //const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(255, 73, 122, 196),
            textStyle: const TextStyle(
              fontSize: 50,
            ),
          ),
          child: Text("Цитата дня"),
        ),
      ],
    );
  }
}