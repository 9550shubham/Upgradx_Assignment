import 'package:flutter/material.dart';
import 'package:myntra/screens/page2.dart';

import '../widgets/reuse.dart';

class Page1 extends StatelessWidget {
  const Page1();

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
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('assets/images/omgdeal.jpg'),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                child: SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return ListSection2(index);
                    },
                  ),
                ),
              ),
              Container(
                height: 70,
                width: double.infinity,
                color: Colors.black12,
                child: const Center(
                    child: Text(
                  'Budget Buys',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                },
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/pht20.jpg'),
                        Image.asset('assets/images/pht21.jpg'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/pht22.jpg'),
                        Image.asset('assets/images/pht23.jpg'),
                      ],
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/myntra32.png')
            ],
          )
        ],
      ),
    );
  }
}
