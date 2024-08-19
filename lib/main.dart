import 'package:flutter/material.dart';
import 'package:goodluck/patient/patientListScreen.dart';

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
      title: 'แอพหมูอ้วง',
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
        '/patient-list': (context) => const PatientListPage(),
      },
    );
  }
}
