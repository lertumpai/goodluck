import 'package:flutter/material.dart';
import 'package:goodluck/patient/patientListScreen.dart';
import 'package:goodluck/transitionBuilder.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App หมูอ้วงบันทึกงาน',
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
                            Navigator.of(context).push(patientListRoute());
                          },
                          style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(vertical: 18))),
                          child: const Text(
                            'Patient list',
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

Route patientListRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const PatientListPage(),
    transitionsBuilder: transitionsBuilder,
  );
}
