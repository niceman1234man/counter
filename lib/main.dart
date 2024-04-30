import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'conter demo',
      home: HomePageState(),
    ),
  );
}

class HomePageState extends StatefulWidget {
  const HomePageState({super.key});
  @override
  myHomePageState createState() => myHomePageState();
}

class myHomePageState extends State<HomePageState> {
  int counter = 0;
  void increamentCounter() {
    setState(() {
      counter++;
    });
  }

  void decreamentCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'counter demo',
          style: TextStyle(
              color: Color.fromARGB(255, 232, 234, 235), fontSize: 30.3),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image:
                    AssetImage("assets/images/photo_2024-04-30_09-09-13.jpg"),
                scale: 1.0,
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("conter$counter"),
            // Text('decreament'),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: decreamentCounter,
            tooltip: 'decreament',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: increamentCounter,
            tooltip: 'increament',
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
