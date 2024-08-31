import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Layouts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
             height: 190,
             width: 190,
             color: Colors.red,
           ),
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
            ),
            Container(
              height: 90,
              width: 90,
              color: Colors.blue,
            ),
          ],
        ),
      )
    );
  }
}
