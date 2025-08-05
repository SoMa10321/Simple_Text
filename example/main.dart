import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:simple_text/simple_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SimpleText(
            text: 'Hello SimpleText!',
            size: 20,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            // (log) print the text when clicked
            onClick: () => log('Clicked!'),
          ),
        ),
      ),
    );
  }
}
