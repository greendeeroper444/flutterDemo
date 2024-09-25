import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  final txtNum = const TextStyle(
    fontSize: 18,
    // fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.userFriends, size: 15),
                SizedBox(width: 8),
                Text('Friends'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.pen, size: 15),
                SizedBox(width: 8),
                Text('Posts'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.users, size: 15),
                SizedBox(width: 8),
                Text('Followers'),
              ],
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('6', style: txtNum),
            Text('2', style: txtNum),
            Text('2.5k', style: txtNum),
          ],
        ),
      ],
    );
  }
}
