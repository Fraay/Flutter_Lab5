import 'package:flutter/material.dart';
import 'package:my_app_afanasev/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(
          Color.fromARGB(110, 0, 0, 0),
          Color.fromARGB(94, 255, 255, 255),
          Color.fromARGB(209, 255, 255, 255),
        ),
      )),
    ),
  );
}