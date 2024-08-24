import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';
import 'package:goodluck/tarots/widgets/curveCard.dart';

class ShowGoodLuckPage extends StatelessWidget {
  final List<Tarot>? listTarot;

  const ShowGoodLuckPage({
    super.key,
    this.listTarot,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("GoodLuck"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Text('Show good luck'),
      ),
    );
  }
}