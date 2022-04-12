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
          title: const Text("Latihan Flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              color: Colors.blueAccent)),
                      Flexible(
                          flex: 1,
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                              color: Colors.yellowAccent)),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.red,
                          ))
                    ],
                  ),
                )),
            Flexible(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                  color: Colors.indigoAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                  color: Colors.cyanAccent,
                ))
          ],
        ),
      ),
    );
  }
}
