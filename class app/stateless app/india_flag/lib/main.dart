import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("INDIAN FLAG"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 450,
              width: 10,
              color: Colors.black,
            ),
            const SizedBox(width: 0),
            Column(
              children: [
                Container(
                  width: 300,
                  height: 45,
                  color: Colors.orange,
                ),
                Container(
                  width: 300,
                  height: 45,
                  color: Colors.white,
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSv_qVA771QI7_4RBSikG1F3qaFe6S0HtJc3Q&s"),
                ),
                Container(
                  width: 300,
                  height: 45,
                  color: Colors.green,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
