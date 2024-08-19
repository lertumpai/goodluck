import 'package:flutter/material.dart';
import 'package:goodluck/tarots/screens/tarots.dart';

import 'homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoodLuck',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.teal,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.white,
              size: 30,
            ),
            titleTextStyle: TextStyle(
              fontSize: 24,
              color: Colors.white,
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/tarots-list': (context) => const TarotsListPage(),
      },
    );
  }
}
