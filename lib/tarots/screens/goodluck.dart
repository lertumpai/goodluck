import 'dart:math';

import 'package:flutter/material.dart';

class CurvedCardDisplay extends StatefulWidget {
  @override
  _CurvedCardDisplayState createState() => _CurvedCardDisplayState();
}

class _CurvedCardDisplayState extends State<CurvedCardDisplay> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final int numCards = 78;
  final double radius = 300;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.rotate(
        angle: pi, // Rotate the entire card display by 180 degrees
        child: SizedBox(
          width: double.infinity,
          height: 600,
          child: Stack(
            children: List.generate(numCards, (index) {
              double angle = (index / numCards) * pi; // Distribute cards along a half-circle
              double xPos = radius * cos(angle) + MediaQuery.of(context).size.width / 2 - 50;
              double yPos = radius * sin(angle); // Adjust the vertical position

              return AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Positioned(
                    left: xPos,
                    top: yPos,
                    child: Transform.rotate(
                      angle: angle - pi / 2, // Rotate each card to align with the curve
                      child: Opacity(
                        opacity: _animation.value,
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

  CardWidget({required this.index});

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

class GoodLuckPage extends StatelessWidget {
  const GoodLuckPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("GoodLuck"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: CurvedCardDisplay(),
      ),
    );
  }
}