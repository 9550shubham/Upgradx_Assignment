import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:myntra/screens/page1.dart';
import 'package:myntra/screens/page2.dart';
import 'package:myntra/screens/page3.dart';
import '../widgets/reuse.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  // List imageList = [
  //   {"id": 1, "image_path": 'assets/images/pht1.jpg'},
  //   {"id": 2, "image_path": 'assets/images/pht2.jpg'},
  //   {"id": 3, "image_path": 'assets/images/pht3.jpg'},
  //   {"id": 4, "image_path": 'assets/images/pht4.jpg'},
  //   {"id": 5, "image_path": 'assets/images/pht5.jpg'},
  //   {"id": 6, "image_path": 'assets/images/pht6.jpg'},
  // ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                height: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: title.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                          child: ListSection3(title[index], index));
                    },
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page3()),
                    );
                  },
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          top: 8,
                          child: Container(
                            height: 87,
                            width: 390,
                            decoration: const BoxDecoration(
                              color: Color(0xFF439498),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 150,
                                right: 50,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'FLAT ₹200 OFF',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  const Text(
                                    '+FREE SHIPPING & MUCH MORE',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                  const Text(
                                    'ONLY ON THE         APP',
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 16,
                                        width: 112,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Page1()),
                                            );
                                          },
                                          child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                'Download',
                                                style: TextStyle(
                                                    fontSize: 11,
                                                    color: Colors.black54),
                                              ),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              Icon(
                                                Icons.download,
                                                color: Colors.black54,
                                                size: 12,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Image.asset(
                                            'assets/images/playstore.png'),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Container(
                                        width: 20,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        // child: ElevatedButton(
                                        //   onPressed: () {},
                                        child: Image.asset(
                                            'assets/images/apple-store.png'),
                                        // ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFffd0ad),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(7),
                              bottomRight: Radius.circular(7),
                            ),
                          ),
                          child: const Text(
                            'NEW ON               MYNTRA?  ',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        Positioned(
                          height: 115,
                          top: -20,
                          left: 27,
                          child: Image.asset('assets/images/hand.png'),
                        ),
                        Positioned(
                          right: 97,
                          bottom: 28,
                          child: Image.asset('assets/images/myntra24.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Submission Deadline'),
                    const SizedBox(width: 10),
                    SizedBox(
                      child: SlideCountdown(
                        separator: '-',
                        separatorStyle: TextStyle(color: Colors.black),
                        duration: Duration(days: 2),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7)),
                        textStyle: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Page1()),
                            );
                          },
                          child: CarouselSlider(
                            items: shopimages0
                                .map(
                                  (item) => Image.asset(
                                    item['image_path'],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                )
                                .toList(),
                            carouselController: carouselController,
                            options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -13,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: shopimages0.asMap().entries.map((entry) {
                              return GestureDetector(
                                onTap: () =>
                                    carouselController.animateToPage(entry.key),
                                child: Container(
                                  width: currentIndex == entry.key ? 10 : 7,
                                  height: currentIndex == entry.key ? 10 : 7,
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 3.0,
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: currentIndex == entry.key
                                          ? Colors.teal
                                          : Colors.black38),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 125,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset('assets/images/badge.png'),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '100% Original',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Products',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 125,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Image.asset('assets/images/rupee.png'),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Free Shiping',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  'On 1st Order',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Page2()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 125,
                        height: 35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Image.asset('assets/images/truck.png'),
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Easy Returns',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  '& Refunds',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    const Text(
                      'ALL-TIME FAVOURITES',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            },
                            child: ReUseCon('assets/images/pht1.jpg', '799')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                          child: ReUseCon('assets/images/pht2.jpg', '699'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            },
                            child: ReUseCon('assets/images/pht3.jpg', '999')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                          child: ReUseCon('assets/images/pht4.jpg', '499'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()),
                              );
                            },
                            child: ReUseCon('assets/images/pht5.jpg', '599')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          child: ReUseCon('assets/images/pht6.jpg', '499'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page1()),
                              );
                            },
                            child: ReUseCon('assets/images/pht2.jpg', '899')),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          child: ReUseCon('assets/images/pht3.jpg', '499'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 370,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(7)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page1()),
                          );
                        },
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'View All',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 25,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Page2()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/pht7.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 17, bottom: 5, left: 15),
                  child: Text('FEATURED BRANDS',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page1()),
                            );
                          },
                          child: ListSection1(index));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
