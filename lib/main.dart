import 'package:day5/stack_demo.dart';
import 'package:flutter/material.dart';

import 'grid_view_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridViewDemo(),
    );
  }
}
