import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

class TarotsListPage extends StatefulWidget {
  const TarotsListPage({super.key});

  @override
  State<TarotsListPage> createState() => _TarotsListPageState();
}

class _TarotsListPageState extends State<TarotsListPage> {
  final tarots = genListTarots();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarots'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset('assets/tarots/${tarots[0].card}.webp'),
      ),
    );
  }
}