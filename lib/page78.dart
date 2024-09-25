import 'package:flutter/material.dart';

class Page78 extends StatelessWidget {
  const Page78({super.key});
  @override
  Widget build(BuildContext context) {
    String description =
        'Pavlova is a meringue-based dessert named after the Russian ballerina'
        'Anna Pavlova. Pavlova features a crisp crust and soft, light inside,'
        'topped with fruit and whipped cream.';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Widget'),
      ),
      body: Center(
        child: ListView(
          children: [
            buildColumn(description),
            buildStar(2, 90),
            const SizedBox(height: 20,),
            buildRowTabs()
          ],
        ),
      ),
    );
  }
}


buildColumn(String description) => Column(
  children: [

    Image.asset('assets/pavlova.jpeg'),

    const SizedBox(height: 10,),

    const Text(
      'Stawberry Pavlova',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold
      ),
    ),

    const SizedBox(height: 10,),

    Container(
      margin: const EdgeInsets.all(15),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(fontSize: 19),
      ),
    )
  ],
);

buildStar(int rating, int numreviews) => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    for(int i = 1; i <= rating; i++)
      const Icon(Icons.star, color: Colors.green, size: 24,),
    for(int i = 1; i <= (5 - rating); i++)
      const Icon(
        Icons.star,
        size: 24,
      ),

    const SizedBox(width: 20,),

    Text(
      '$numreviews Reviews',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      ),
    )
  ],
);

buildRowTabs() => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    buildicontab(Icons.kitchen, 'PREP', '25 min'),
    buildicontab(Icons.timer, 'COOK', '1 hr'),
    buildicontab(Icons.kitchen, 'FEEDS', '4-6'),
  ],
);
buildicontab(IconData icon, String title, String subtitle) => Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [

    Icon(icon, color: Colors.green, size: 25),

    const SizedBox(height: 8),

    Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),

    const SizedBox(height: 10),

    Text(
      subtitle,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  ],
);


