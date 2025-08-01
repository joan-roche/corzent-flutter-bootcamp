import 'package:dice_roller_app/dice_roller.dart';
import 'package:flutter/material.dart';


const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});


  const GradientContainer.sunshine({super.key})
      : color1 = const Color(0xFFFFE082), // Light warm yellow
        color2 = const Color(0xFFFF8A65); // Peachy coral

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
            // Add a third color for extra warmth
            Color.lerp(color2, Colors.pink.shade200, 0.3)!,
          ],
          begin: startAlignment,
          end: endAlignment,
          stops: [0.0, 0.7, 1.0],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}