import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          shadowColor: Colors.white,
          title: Image.asset('assets/images/myntra32.png'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined, size: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            Image.asset('assets/images/heart.png'),
            const SizedBox(
              width: 18,
            ),
            Image.asset('assets/images/bag.png'),
            const SizedBox(
              width: 13,
            ),
          ],
        ),
        body: const Center(child: Text('DOWNLOAD')));
  }
}
