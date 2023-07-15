import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myntra/widgets/reuse.dart';
import 'page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 70,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 248, 164, 212),
                          Color.fromARGB(255, 245, 245, 136)
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/rupee.png'),
                            const SizedBox(
                              width: 15,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  'Free Shipments',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 106, 97, 156),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                              totalRepeatCount: 1,
                            ),
                          ],
                        ),
                        const VerticalDivider(
                          indent: 10.0,
                          endIndent: 10.0,
                          color: Color.fromARGB(255, 110, 110, 110),
                        ),
                        Row(
                          children: [
                            Image.asset('assets/images/truck.png'),
                            SizedBox(
                              width: 15,
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  'Easy Returns',
                                  textStyle: const TextStyle(
                                      color: Color.fromARGB(255, 106, 97, 156),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ],
                              totalRepeatCount: 1,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product(
                        'assets/images/pht24.jpg',
                        'Roadster',
                        'Men Analogue and Digital Watch',
                        '579',
                        '2899',
                        '74',
                        '499'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product(
                        'assets/images/pht25.jpg',
                        'Kalini',
                        'Women Printed Kurta with Trousers',
                        '599',
                        '4999',
                        '88',
                        '499'),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product('assets/images/pht26.jpg', 'HR&hr',
                        'Men Conmfort Insole', '648', '2899', '74', '599'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product('assets/images/pht27.jpg', 'Combraided',
                        'Men Slim Fit Chinos', '492', '4299', '75', '429'),
                  ),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product(
                        'assets/images/pht28.jpg',
                        'Ziyaa',
                        'Women Colourblocked Kurta',
                        '575',
                        '1679',
                        '65',
                        '479'),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page1()),
                      );
                    },
                    child: product('assets/images/pht29.jpg', 'Sangrai',
                        'Women Embroidered dress', '599', '2999', '80', '499'),
                  ),
                ],
              ),
              Image.asset('assets/images/myntra32.png')
            ],
          ),
        ],
      ),
    );
  }
}
