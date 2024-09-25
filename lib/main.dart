import 'package:flutter/material.dart';
import 'package:flutter_demo/mainpage.dart';
import 'package:flutter_demo/newpage.dart';
import 'package:flutter_demo/newpage2.dart';
import 'package:flutter_demo/page1.dart';
import 'package:flutter_demo/page2.dart';
import 'package:flutter_demo/page3.dart';
import 'package:flutter_demo/page35.dart';
import 'package:flutter_demo/page4.dart';
import 'package:flutter_demo/page40.dart';
import 'package:flutter_demo/page42.dart';
import 'package:flutter_demo/page5.dart';
import 'package:flutter_demo/page55.dart';
import 'package:flutter_demo/page78.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(20, 81, 215, 145)),
        useMaterial3: false,
      ),
      home: MainPage(),
    );
  }
}

