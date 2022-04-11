import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Latihan Container")),
      body: Container(
        color: Colors.blueGrey,
        margin: const EdgeInsets.fromLTRB(40, 10, 40, 10),
        padding: const EdgeInsets.only(top: 30, left: 50),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.blue, Colors.white10]),
          ),
        ),
      ),
    ));
  }
}
