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
  int number = 1;
  void tambahData() {
    setState(() {
      widgets.add(Text(
        "Data ke-" + number.toString(),
        style: const TextStyle(fontSize: 20),
      ));
      number++;
    });
  }

  void kurangData() {
    setState(() {
      widgets.removeLast();
      number--;
    });
  }

  _MyAppState() {
    for (int i = 0; i < number; i++) {
      widgets.add(Text("Data ke-" + i.toString(),
          style: const TextStyle(
            fontSize: 20,
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text("Latihan List View")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: tambahData, child: const Text("Tambah Data")),
              ElevatedButton(
                  onPressed: kurangData, child: const Text("Hapus Data"))
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ]),
      ),
    ));
  }
}
