import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Assets'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Image.asset('assets/arthur-shelby.jpg')
              ),
              Expanded(
                flex: 2,
                  child: Image.asset('assets/thomas-shelby.jpg')
              ),
              Expanded(
                  child: Image.asset('assets/john-shelby.jpg')
              ),
            ],
          ),
        )
    );
  }
}
