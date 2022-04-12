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
          title: const Text("Latihan Stack Align"),
        ),
        body: Stack(children: <Widget>[
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black26,
                          ))
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1, child: Container(color: Colors.black26)),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ))
                    ],
                  )),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                child: const Text(
                  "Ini adalah text yang ada lapisan tengah dari Stack",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: const Text(
                  "Ini adalah text yang ada lapisan tengah dari Stack",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: const Text(
                  "Ini adalah text yang ada lapisan tengah dari Stack",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: const Text(
                  "Ini adalah text yang ada lapisan tengah dari Stack",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: const Text(
                  "Ini adalah text yang ada lapisan tengah dari Stack",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0.0, 0.8),
            // alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("My Button"),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                padding: const EdgeInsets.all(5),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
