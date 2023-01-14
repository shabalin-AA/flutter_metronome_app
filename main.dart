import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Metronome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tempo = 120;

  void _incrementCounter() {
    setState(() {
      if (_tempo < 300) {
        _tempo += 10;
      }
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_tempo > 60) {
        _tempo -= 10;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                _incrementCounter();
              },
              child: const Icon(Icons.arrow_drop_up),
            ),
            Text(
              '$_tempo',
              style: TextStyle(fontSize: 50),
            ),
            const SizedBox(width: 20),
            FloatingActionButton(
              onPressed: () {
                _decrementCounter();
              },
              child: const Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
