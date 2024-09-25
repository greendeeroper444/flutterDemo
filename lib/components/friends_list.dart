import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({super.key});

  final imageSize = const BoxConstraints(
    maxHeight: 80,
    maxWidth: 80,
    minHeight: 80,
    minWidth: 80,
  );

  @override
  Widget build(BuildContext context) {

    final friends = [
      {'name': 'Rhondel Colecha', 'image': 'assets/rhondel.jpg'},
      {'name': 'Rodgie Colecha', 'image': 'assets/rodgie.jpg'},
      {'name': 'Jarryl Jovenir', 'image': 'assets/jarryl.jpg'},
      {'name': 'Kyla Jardinico', 'image': 'assets/kyla.jpg'},
      {'name': 'Zyrah Gascon', 'image': 'assets/Zyrah.jpg'},
      {'name': 'Rhea Vitualla', 'image': 'assets/rhea.jpg'},
    ];

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            'Friends',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: friends.map((friend) {
            return SizedBox(
              width: imageSize.maxWidth + 20,
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ConstrainedBox(
                        constraints: imageSize,
                        child: Image.asset(friend['image']!, fit: BoxFit.cover),
                      ),
                      const SizedBox(height: 10),
                      Text(friend['name']!),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
