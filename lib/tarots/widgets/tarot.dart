import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class TarotDetail extends StatelessWidget {
  final String title;
  final String detail;

  const TarotDetail({super.key, required this.title, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.redAccent.shade100,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
          ),
          Text(detail)
        ],
      ),
    );
  }
}

class TarotWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotWidget({super.key, required this.tarot});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('assets/tarots/${tarot.card}.webp'),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: <Widget>[
              TarotDetail(title: 'Sign', detail: tarot.sign),
              const SizedBox(height: 10),
              TarotDetail(title: 'Keyword', detail: tarot.keyword),
              const SizedBox(height: 10),
              TarotDetail(title: 'Definition', detail: tarot.definition),
              const SizedBox(height: 10),
              TarotDetail(title: 'Money', detail: tarot.money),
              const SizedBox(height: 10),
              TarotDetail(title: 'Health', detail: tarot.health),
              const SizedBox(height: 10),
              TarotDetail(title: 'Love', detail: tarot.love),
              const SizedBox(height: 10),
              TarotDetail(title: 'Work', detail: tarot.work),
              const SizedBox(height: 10),
              TarotDetail(title: 'Job', detail: tarot.job),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
