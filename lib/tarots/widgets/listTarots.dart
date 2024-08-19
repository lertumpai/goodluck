import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class TarotWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotWidget({super.key, required this.tarot});

  @override
  Widget build(BuildContext context) {
    return Text(tarot.card);
  }
}

class TarotsListWidget extends StatelessWidget {
  TarotsListWidget({super.key});

  final listTarot = genListTarot();

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return TarotWidget(tarot: listTarot[index],);
      },
      separatorBuilder: (context, i) => const SizedBox(height: 10),
      itemCount: listTarot.length,
    );
  }
}

// Image.asset('assets/tarots/${tarots[0].card}.webp')