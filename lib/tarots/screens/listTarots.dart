import 'package:flutter/material.dart';

import '../widgets/listTarots.dart';

class TarotsListPage extends StatefulWidget {
  const TarotsListPage({super.key});

  @override
  State<TarotsListPage> createState() => _TarotsListPageState();
}

class _TarotsListPageState extends State<TarotsListPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tarot'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const TarotsListWidget(),
      ),
    );
  }
}