import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          const Center(child: Text('home',style: TextStyle(fontSize: 25,backgroundColor: Colors.green))),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'home'
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: '2'
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: '3'
            ),
          )
        ],
      ),

    );
  }
}
