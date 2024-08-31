import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample 4'),
        ),
        body: Center(
          child: Column(
            children: [

              const SizedBox(height: 10,),

              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: Colors.green,
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(85),
                    child: Image.asset(
                      'assets/thomas-shelby.jpg',
                      width: 170,
                      height: 170,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                color: Colors.yellow,
                padding: const EdgeInsets.symmetric(horizontal: 21),
                child: const Column(
                  children: [
                    Text(
                      'Thomas Shelby',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text('thomasshelby@gmail.com'),
                  ],
                ),
              ),

              const SizedBox(height: 10,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Friends'),
                  Text('Followers'),
                  Text('Posts'),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('100'),
                  Text('1.5k'),
                  Text('2'),
                ],
              )
            ],
          ),
        )
    );
  }
}
