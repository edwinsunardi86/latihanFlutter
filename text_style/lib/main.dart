import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text("Latihan TextStyle")),
            body: const Center(
                child: Text(
              "Ini adalah Text",
              style: TextStyle(
                  fontFamily: "CrashLandingBB",
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.blue,
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy),
            ))));
  }
}
