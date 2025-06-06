import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: "background",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/background2.jpg",
              color: Colors.white30,
              colorBlendMode: BlendMode.modulate,
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }
}
