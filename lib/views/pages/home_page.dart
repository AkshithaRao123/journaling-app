import 'package:demo/data/constants.dart';
import 'package:demo/views/widgets/hero_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: [
          HeroWidget(title: "khjkhjk",),
          Card(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Basic Layout", style: KTextStyle.titleTealText),
                  Text("Basic Layout", style: KTextStyle.descriptionText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
