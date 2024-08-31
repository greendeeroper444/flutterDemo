import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Spacing/Padding'),
        ),
       body: Row(
         children: [
           Container(
             margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
             color: Colors.yellow,
             child: const Text(
               'TEXT 1',
               style: TextStyle(
                 fontSize: 32
               ),
             ),
           ),
           Container(
             margin: const EdgeInsets.fromLTRB(10, 50, 20, 30),
             color: Colors.red,
             child: const Text(
               'TEXT 2',
               style: TextStyle(
                   fontSize: 32
               ),
             ),
           ),
           Container(
             color: Colors.green,
             child: const Text(
               'TEXT 3',
               style: TextStyle(
                   fontSize: 32
               ),
             ),
           )
         ],
       ),
    );
  }
}
