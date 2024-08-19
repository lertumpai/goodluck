import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class TarotWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotWidget({super.key, required this.tarot});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue.shade200,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Image.asset('assets/tarots/${tarot.card}.webp'),
          const SizedBox(width: 10,),
          Text(tarot.card)
        ],
      ),
    );
  }
}

class TarotsListWidget extends StatelessWidget {
  TarotsListWidget({super.key});

  final listTarot = genListTarot();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return TarotWidget(tarot: listTarot[index],);
        },
        separatorBuilder: (context, i) => const SizedBox(height: 10),
        itemCount: listTarot.length,
      ),
    );
  }
}
