import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';
import 'package:goodluck/tarots/widgets/show_3_cards.dart';

class Show3CardsPage extends StatelessWidget {
  final List<Tarot>? listTarot;

  const Show3CardsPage({
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
        child: Show3CardsWidget(listTarot: listTarot ?? []),
      ),
    );
  }
}