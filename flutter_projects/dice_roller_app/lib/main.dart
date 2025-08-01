import 'package:dice_roller_app/gradient_container.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.sunshine(), // Using the cute sunshine theme
      ),
    ),
  );
}