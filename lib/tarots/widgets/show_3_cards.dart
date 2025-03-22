import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';
import 'package:goodluck/tarots/widgets/tarot.dart';

class Show3CardsWidget extends StatelessWidget {
  final List<Tarot> listTarot;

  const Show3CardsWidget({super.key, required this.listTarot});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listTarot.length, // Number of items in the list
      itemBuilder: (context, index) {
        return SizedBox(
          height: 500,
          child: TarotWidget(tarot: listTarot[index]),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(); // Separator widget
      },
    );
  }
}

