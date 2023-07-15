import 'package:flutter/material.dart';
import 'reuse.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Image.asset('assets/images/heart.png')),
            const SizedBox(
              width: 15,
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Image.asset('assets/images/bag.png')),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(17.0),
                      child: Text(
                        'SHOP FOR',
                        style: TextStyle(
                            color: Color.fromARGB(221, 30, 29, 29),
                            fontSize: 12),
                      ),
                    ),
                    navDraw('Men'),
                    const Divider(
                        thickness: 1, color: Colors.black26, height: 1),
                    navDraw('Women'),
                    const Divider(
                        thickness: 1, color: Colors.black26, height: 1),
                    navDraw('Kids'),
                    const Divider(
                        thickness: 1, color: Colors.black26, height: 1),
                    navDraw('Home & Living'),
                    const Divider(
                        thickness: 1, color: Colors.black26, height: 1),
                    navDraw('Beauty'),
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Colors.black26,
                height: 1,
              ),
              Container(
                height: 500,
                color: Colors.black12,
                child: const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in',
                        style: TextStyle(
                            color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Sign up',
                        style: TextStyle(
                            color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Gift Cards',
                        style: TextStyle(
                            color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
                      ),
                      SizedBox(height: 25),
                      Text(
                        'Shopping Group',
                        style: TextStyle(
                            color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
                      ),
                      SizedBox(height: 275),
                      Text(
                        'CONTACT US',
                        style: TextStyle(
                            color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100,
          color: const Color(0xFF272c3f),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 350,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: const Color(0xFFff406c),
                    ),
                    child: const Center(child: Text('Log In')),
                  ),
                ),
              ),
              const Text('By enrolling you agree to'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: const Text(
                  'Insider Terms & Conditions',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFff406c),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 530,
              child: Stack(
                children: [
                  Image.asset('assets/images/insider.jpg'),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      height: 170,
                      width: 400,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            color: Color(0xFF1c1b20),
                            spreadRadius: 10,
                          )
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          // top: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Become An INSIDER!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xFFe4aa35),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Join the Insider programme and earn\nSupercoins with every purchase and much\nmore. Log in now!',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromARGB(255, 157, 151, 151),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              'New Goal Criteria',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF272c3f),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 70,
                    child: ListTile(
                      leading: Image.asset('assets/images/crown.png'),
                      title: const Text(
                        '₹0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: const Text(
                        'You\'ve Spent',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: const Text(
                        '₹ 7000\nGoal',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Color.fromARGB(255, 62, 68, 89),
                    thickness: 2,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF272c3f),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    height: 70,
                    child: ListTile(
                      leading: Image.asset('assets/images/crown.png'),
                      title: const Text(
                        '0/5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: const Text(
                        'Your Orders',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: const Text(
                        '5\nGoal',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                'Note: Recent purchase will only reflect in the goal once the return\nwindow is over',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Benifits Of Joining The Program',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFFe4aa35),
                      ),
                      //textAlign: TextAlign.right,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/time.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Early Access to The Sales',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/trophy.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Insider Exclusive Rewards &\nBenefits',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/phone.png'),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text('Priority Customer Support',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'How does it work',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xFFe4aa35),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every ₹100 spent',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(221, 219, 207, 207),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF2e2f41),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 180,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 130,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/images/timeline.png'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF3e4152),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          height: 50,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, left: 20, right: 8, bottom: 8),
                                child: Image.asset('assets/images/arrow.png'),
                              ),
                              Text('Shop on Myntra to Upgrade your tier')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ListTile(
              title: Text(
                'Rewards',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFe4aa35),
                ),
              ),
              subtitle: Text(
                'Use your SuperCoins to get exciting rewards',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(221, 219, 207, 207),
                ),
              ),
            ),
            SizedBox(
              height: 270,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: title.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return section(title[index], index);
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 80,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/myntra32.png'),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset('assets/images/insiderlogo.png'),
                    ],
                  ),
                  const Text('Fashion Advice | VIP Access | Extra Savings'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
