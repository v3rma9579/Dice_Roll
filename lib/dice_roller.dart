import 'package:flutter/material.dart';
import 'dart:math';

final generateRandomNumber = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  int count = 0;
  void rollDice() {
    var diceRoll = generateRandomNumber.nextInt(6) + 1;
    setState(() {
      activeDice = 'assets/images/dice-$diceRoll.png';
      count++;
    });

    if (diceRoll == 6) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Results!"),
            content: Text("You won!\nYou won in $count chances!"),
            alignment: Alignment.topCenter,
          );
        },
      );
    }
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDice,
        width: 300,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: Colors.deepOrange,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              textStyle: const TextStyle(
                fontSize: 30,
              )),
          child: const Text("Roll a dice"),
        ),
      )
    ]);
  }
}
