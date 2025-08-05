import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:simple_text_widget/simple_text_widget.dart';

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
          child: SimpleTextWidget(
            text: 'Hello SimpleTextWidget!',
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
