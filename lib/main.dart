import 'package:flutter/material.dart';
import 'package:flutter_demo/page1.dart';
import 'package:flutter_demo/page2.dart';
import 'package:flutter_demo/page3.dart';
import 'package:flutter_demo/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const Page4(),
    );
  }
}

