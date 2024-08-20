import 'package:flutter/material.dart';
import 'package:goodluck/tarots/widgets/curveCard.dart';

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
        child: const CurvedCardDisplay(),
      ),
    );
  }
}