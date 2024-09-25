import 'package:flutter/material.dart';

class Page42 extends StatelessWidget {
  const Page42({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
      ),
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30.0,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
          ],
        ),
      ),
    );
  }
}
