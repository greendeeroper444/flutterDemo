// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// class Page5 extends StatelessWidget {
//   const Page5({super.key});
//
//   final txtNum = const TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.bold,
//   );
//
//   final imageSize = const BoxConstraints(
//     maxHeight: 100,
//     maxWidth: 100,
//     minHeight: 100,
//     minWidth: 100
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Greendee\'s Profile'),
//       ),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Column(
//             children: [
//               const SizedBox(height: 100),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(100),
//                 child: Container(
//                   color: Colors.green,
//                   padding: const EdgeInsets.all(3),
//                   child: const CircleAvatar(
//                     radius: 50,
//                     backgroundImage: AssetImage(
//                         'assets/myprofile.jpg',
//                     ),
//                   ),
//                 ),
//               ),
//               const Text('Greendee Roper B. Panogalon',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   )),
//               const Text('greendeeroperpanogalon@email.com'),
//
//               const Divider(),
//
//               const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Row(
//                     children: [
//                       Icon(FontAwesomeIcons.userFriends, size: 20),
//                       SizedBox(width: 5),
//                       Text('Friends'),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(FontAwesomeIcons.pen, size: 20),
//                       SizedBox(width: 5),
//                       Text('Posts'),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       Icon(FontAwesomeIcons.users, size: 20),
//                       SizedBox(width: 5),
//                       Text('Followers'),
//                     ],
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Text('5,000', style: txtNum),
//                   Text('3', style: txtNum),
//                   Text('2.5k', style: txtNum),
//                 ],
//               ),
//
//               const Divider(),
//
//               Container(
//                 padding: const EdgeInsets.all(10),
//                   child: const Text(
//                       'Friends',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//
//                     ),
//                   )
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/rhondel.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Rhondel Colecha'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/rodgie.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Rodgie Colecha'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/jarryl.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Jarryl Jovenir'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/kyla.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Kyla Jardinico'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/Zyrah.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Zyrah Faith Gascon'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                   Card(
//                     child: Column(
//                       children: [
//                         ConstrainedBox(
//                           constraints: imageSize,
//                           child: Image.asset(
//                             'assets/rhea.jpg',
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         const SizedBox(height: 10),
//                         const Text('Rhea Vitualla'),
//                         const SizedBox(height: 10),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../components/profile_header.dart';
import '../components/profile_stats.dart';
import '../components/friends_list.dart';
import '../components/post_feed.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greendee\'s Profile'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ProfileHeader(),
              SizedBox(height: 20),
              ProfileStats(),
              Divider(),
              FriendsList(),
              Divider(),
              PostFeed(),
            ],
          ),
        ),
      ),
    );
  }
}
