import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

const color1 = Color.fromRGBO(140, 64, 255, 1);
const color2 = Color.fromRGBO(140, 66, 255, 2);



class GradiantContainer extends StatelessWidget {
  const GradiantContainer({super.key});

  

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
            child: DiceRoller(),
        )
        );
  }
}
