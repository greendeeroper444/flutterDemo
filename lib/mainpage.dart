import 'package:flutter/material.dart';
import 'package:flutter_demo/newpage.dart';
import 'package:flutter_demo/newpage2.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  TextEditingController txtController = TextEditingController();
  TextEditingController txtController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(

                  ),
                  hintText: 'Enter username',
                  labelText: 'USERNAME'
                ),
              ),

              const SizedBox(height: 15,),

              TextField(
                obscureText: true,
                controller: txtController1,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(

                    ),
                    hintText: 'Enter password',
                    labelText: 'PASSWORD'
                ),
              ),

              const SizedBox(height: 15,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => NewPage(
                            username: txtController.text,
                            password: txtController1.text,
                          )
                      )
                    );
                  },
                  child: const Text('LOGIN')
              ),
              const SizedBox(height: 15,),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const NewPage2()
                    )
                  );
                },
                  child: const Text('Create your account here.')
              )
            ],
          ),
        ),
      ),
    );
  }
}
