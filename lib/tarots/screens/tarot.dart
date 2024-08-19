import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

import '../widgets/listTarots.dart';

class TarotPage extends StatelessWidget {
  final Tarot? tarot;

  const TarotPage({super.key, this.tarot});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(tarot!.card),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const Text('Tarot'),
      ),
    );
  }
}