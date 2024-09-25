import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({
    super.key,
    required this.username,
    required this.password
  });

  final String username;
  final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: const Icon(Icons.home),
        ),
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: const Icon(Icons.add)
          ),
          // IconButton(
          //     onPressed: () {
          //
          //     },
          //     icon: const Icon(Icons.edit)
          // ),
          // IconButton(
          //     onPressed: () {
          //
          //     },
          //     icon: const Icon(Icons.close)
          // )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The username is: $username',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'The username is: $password',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('GO BACK')
            )
          ],
        ),
      ),
    );
  }
}
