import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        //cover photo
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset(
            'assets/cover.jpg',
            fit: BoxFit.cover,
          ),
        ),

        Center(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(height: 120),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: Colors.green,
                      padding: const EdgeInsets.all(3),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/myprofile.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Greendee Roper B. Panogalon',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('greendeeroperpanogalon@email.com'),
            ],
          ),
        ),
      ],
    );
  }
}
