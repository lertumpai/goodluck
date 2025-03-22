import 'package:flutter/material.dart';
import 'package:goodluck/tarots/screens/mode.dart';
import 'package:goodluck/tarots/widgets/curveCard.dart';

class GoodLuckPage extends StatelessWidget {
  final GoodLuckModeEnum goodLuckModeEnum;

  const GoodLuckPage({super.key, required this.goodLuckModeEnum});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("GoodLuck"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: CurvedCardDisplay(goodLuckModeEnum: goodLuckModeEnum),
      ),
    );
  }
}