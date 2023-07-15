import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Myntra',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          Image.asset('assets/images/heart.png'),
          const SizedBox(
            width: 15,
          ),
          Image.asset('assets/images/bag.png'),
          const SizedBox(
            width: 8,
          ),
        ],
      ),
      body: Center(
          child: Container(
              child: Text(
        'As it was asked to make only UI',
        style: TextStyle(fontSize: 20),
      ))),
    );
  }
}
