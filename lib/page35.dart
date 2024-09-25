import 'package:flutter/material.dart';

class Page35 extends StatelessWidget {
  const Page35({super.key});

  @override
  Widget build(BuildContext context) {

    var txtDesign = const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dynamic Widget'
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a custom text',
              style: txtDesign,
            ),

            const SizedBox(height: 10,),

            buildNewRow()
          ],
        ),
      ),
    );
  }
}


buildNewRow() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         const Text(
           'This is a new widget',
         ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.green,
              height: 360,
              width: 360,
            ),
            Container(
              color: Colors.red,
              height: 320,
              width: 320,
            ),
            Image.asset(
              'assets/greendee.jpg',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ],
    ),
  ],
);