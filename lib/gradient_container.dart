import 'package:flutter/material.dart';
import 'package:flutter_demo_app/dice_roller.dart';
// import 'package:flutter_demo_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98)
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors
        // [
        //   Color.fromARGB(255, 26, 2, 80),
        //   Color.fromARGB(255, 45, 7, 98)
        // ]
        ,
        begin: startAlignment,
        end: endAlignment,
      )),
      child: const Center(child: DiceRoller()),
    );
  }
}
