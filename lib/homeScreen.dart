import 'package:flutter/material.dart';
import 'package:goodluck/tarots/screens/celtic_cross.dart';
import 'package:goodluck/tarots/screens/goodluck.dart';
import 'package:goodluck/tarots/screens/listTarots.dart';
import 'package:goodluck/tarots/screens/mode.dart';
import 'package:goodluck/transitionBuilder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoodLuck',
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: FilledButton.tonal(
                          onPressed: () {
                            Navigator.of(context).push(tarotListRoute());
                          },
                          style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 18))),
                          child: const Text(
                            'Tarots',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: FilledButton.tonal(
                          onPressed: () {
                            Navigator.of(context).push(goodLuckRoute());
                          },
                          style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 18))),
                          child: const Text(
                            '3 Cards',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      child: FilledButton.tonal(
                          onPressed: () {
                            Navigator.of(context).push(celticCrossRoute());
                          },
                          style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 18))),
                          child: const Text(
                            'Celtic Cross',
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route tarotListRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const TarotsListPage(),
    transitionsBuilder: transitionsBuilder,
  );
}

Route goodLuckRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const GoodLuckPage(goodLuckModeEnum: GoodLuckModeEnum.show3Cards),
    transitionsBuilder: transitionsBuilder,
  );
}

Route celticCrossRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const GoodLuckPage(goodLuckModeEnum: GoodLuckModeEnum.celticCross),
    transitionsBuilder: transitionsBuilder,
  );
}
