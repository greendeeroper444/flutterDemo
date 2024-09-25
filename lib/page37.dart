import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Page37 extends StatelessWidget {
  const Page37({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('assets/john-shelby.jpg'),

                SizedBox(height: 10,),

                Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            width: 2.0
                        )
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Strawberry Pavlova',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),

                SizedBox(height: 10,),

                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          width: 2.0
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                          'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ),
                ),


                Row(
                  children: [
                    Icon(FontAwesomeIcons.star, size: 15),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
