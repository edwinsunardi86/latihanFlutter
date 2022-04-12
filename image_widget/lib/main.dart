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
          title: const Text("Latihan Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.pink,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            child: Column(
              children: const [
                Expanded(
                  child: Image(
                    image: NetworkImage(
                        "https://image.winudf.com/v2/image1/Y29tLndhbGxpZS5ibGFja3Bpbmsud2FsbHBhcGVyc19zY3JlZW5fMF8xNTgyMTU3MTY0XzA1MA/screen-0.jpg?fakeurl=1&type=.webp"),
                    fit: BoxFit.contain,
                    repeat: ImageRepeat.repeatX,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
