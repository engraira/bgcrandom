import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChangerPage(),
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  @override
  _ColorChangerPageState createState() => _ColorChangerPageState();
}

class _ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.white; // Initial background color

  void _changeBackgroundColor() {
    final random = Random();
    final red = random.nextInt(256);
    final green = random.nextInt(256);
    final blue = random.nextInt(256);

    setState(() {
      _backgroundColor = Color.fromARGB(255, red, green, blue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Changer App'),
      ),
      body: Center(
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                _changeBackgroundColor();
              },
              child: Text('Change Color'),
            ),
          ),
        ),
      ),
    );
  }
}
