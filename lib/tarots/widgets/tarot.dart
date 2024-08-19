import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class TarotWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotWidget({super.key, required this.tarot});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/tarots/${tarot.card}.webp');
  }
}
