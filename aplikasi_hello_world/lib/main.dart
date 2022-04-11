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
      appBar: AppBar(
        title: const Text("Aplikasi Hello World"),
      ),
      // ignore: prefer_const_constructors, avoid_unnecessary_containers
      body: Center(
          child: Container(
        child: const Text(
          "Saya sedang melatih kemampuan flutter saya.",
          maxLines: 2,
          overflow: TextOverflow.clip,
          softWrap: false,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        color: Colors.lightBlue,
        width: 156,
        height: 50,
      )),
    ));
  }
}
