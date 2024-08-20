import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class CurvedCardDisplay extends StatefulWidget {
  const CurvedCardDisplay({super.key, });

  @override
  _CurvedCardDisplayState createState() => _CurvedCardDisplayState();
}

class _CurvedCardDisplayState extends State<CurvedCardDisplay> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final listTarot = genListTarot();
  final double radius = 350;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1, milliseconds: 200),
      vsync: this,
    );

    // Adding a delay before starting the animation
    Future.delayed(const Duration(milliseconds: 350), () {
      _controller.forward();
    });
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Transform.rotate(
        angle: pi,
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Stack(
            children: List.generate(listTarot.length, (index) {
              double angle = (index / listTarot.length) * pi; // Final position angle along the curve

              double xPos = radius * cos(angle) + screenWidth / 2 - 50;
              double yPos = radius * sin(angle);

              // Control the appearance of each card based on the animation progress
              Animation<double> animation = CurvedAnimation(
                parent: _controller,
                curve: Interval(
                  index / listTarot.length,
                  (index + 1) / listTarot.length,
                  curve: Curves.easeInOut,
                ),
              );

              return AnimatedBuilder(
                animation: animation,
                builder: (context, child) {
                  return Positioned(
                    left: xPos,
                    top: yPos,
                    child: Transform.rotate(
                      angle: angle - pi / 2,
                      child: Opacity(
                        opacity: animation.value, // Gradually show each card
                        child: CardWidget(index: index + 1),
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final int index;

  const CardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: const Center(
        child: Text(
          "Tarot",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}