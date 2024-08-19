import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

import '../../transitionBuilder.dart';
import '../screens/tarot.dart';

class TarotWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotWidget({super.key, required this.tarot});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(tarotRoute(tarot));
      },
      child: Container(
        padding: const EdgeInsetsDirectional.all(10),
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6)
        ),
        child: Row(
          children: [
            Image.asset('assets/tarots/${tarot.card}.webp'),
            const SizedBox(width: 10,),
            Expanded(
              child: Text(
                tarot.card,
                style: const TextStyle(fontSize: 12), // Adjust text style if needed
                overflow: TextOverflow.clip, // Add ellipsis if text overflows
              ),
            ),
          ],
        ),
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
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          crossAxisSpacing: 10.0, // Horizontal space between columns
          mainAxisSpacing: 10.0, // Vertical space between rows
          childAspectRatio: 1.2, // Aspect ratio of each item
        ),
        itemCount: listTarot.length, // Number of items
        itemBuilder: (context, index) {
          return TarotWidget(tarot: listTarot[index],);
        },
        padding: const EdgeInsets.all(10.0),
      )
    );
  }
}

Route tarotRoute(Tarot tarot) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
    TarotPage(tarot: tarot),
    transitionsBuilder: transitionsBuilder,
  );
}