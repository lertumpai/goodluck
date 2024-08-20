import 'package:flutter/material.dart';
import 'package:goodluck/tarots/data/tarots.dart';

import '../../transitionBuilder.dart';
import '../screens/tarot.dart';

class TarotItemWidget extends StatelessWidget {
  final Tarot tarot;

  const TarotItemWidget({super.key, required this.tarot});

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
            color: Colors.redAccent.shade100,
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

class TarotsListWidget extends StatefulWidget {
  const TarotsListWidget({super.key});

  @override
  State<TarotsListWidget> createState() => _TarotsListWidgetState();
}

class _TarotsListWidgetState extends State<TarotsListWidget> {
  final listTarot = genListTarot();
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(height: 10,),
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter your text',
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns
              crossAxisSpacing: 10.0, // Horizontal space between columns
              mainAxisSpacing: 10.0, // Vertical space between rows
              childAspectRatio: 1.2, // Aspect ratio of each item
            ),
            itemCount: _controller.text.isEmpty
                ? listTarot.length
                : listTarot
                    .where((tarot) => tarot.card.toUpperCase().contains(_controller.text.toUpperCase(), 0))
                    .toList().length,
            itemBuilder: (context, index) {
              return TarotItemWidget(
                tarot: _controller.text.isEmpty
                  ? listTarot[index]
                  : listTarot
                      .where((tarot) => tarot.card.toUpperCase().contains(_controller.text.toUpperCase(), 0))
                      .toList()[index],
                );
            },
          ),
        ),
        const SizedBox(height: 10,),
      ],
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