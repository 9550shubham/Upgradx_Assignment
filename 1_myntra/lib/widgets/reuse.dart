import 'package:flutter/material.dart';

List shopimages0 = [
  {"id": 1, "image_path": 'assets/images/pht1.jpg'},
  {"id": 2, "image_path": 'assets/images/pht2.jpg'},
  {"id": 3, "image_path": 'assets/images/pht3.jpg'},
  {"id": 4, "image_path": 'assets/images/pht4.jpg'},
  {"id": 5, "image_path": 'assets/images/pht5.jpg'},
  {"id": 6, "image_path": 'assets/images/pht6.jpg'},
];
List shopimages1 = [
  Image.asset('assets/images/pht8.jpg'),
  Image.asset('assets/images/pht9.jpg'),
  Image.asset('assets/images/pht10.jpg'),
  Image.asset('assets/images/pht11.jpg'),
  Image.asset('assets/images/pht12.jpg'),
  Image.asset('assets/images/pht13.jpg'),
  Image.asset('assets/images/pht14.jpg'),
];
List shopimages2 = [
  Image.asset('assets/images/pht15.jpg'),
  Image.asset('assets/images/pht16.jpg'),
  Image.asset('assets/images/pht17.jpg'),
  Image.asset('assets/images/pht18.jpg'),
  Image.asset('assets/images/pht19.jpg'),
];
List shopimages3 = [
  Image.asset('assets/images/men.png'),
  Image.asset('assets/images/women.png'),
  Image.asset('assets/images/kids.png'),
  Image.asset('assets/images/footwear.png'),
  Image.asset('assets/images/beauty.png'),
  Image.asset('assets/images/jwellery.png'),
];

List title = [
  'Men',
  'Women',
  'Kids',
  'Footwear',
  'Beauty',
  'Jwellery',
];

Widget ReUseCon(path, price) {
  return Container(
    width: 170,
    height: 120,
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            path,
          ),
        ),
        Text(
          'UNDER ₹' + price,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget ListSection1(index) {
  return shopimages1[index];
}

Widget ListSection2(index) {
  return shopimages2[index];
}

Widget ListSection3(title, index) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        shopimages3[index],
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 14.5),
        )
      ],
    ),
  );
}

Widget product(path, name, desc, current, previous, off, best) {
  return SizedBox(
    height: 350,
    child: Column(
      children: [
        Image.asset(path),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  desc,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 142, 141, 141)),
                ),
                Row(
                  children: [
                    Text(
                      '₹' + current,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '₹' + previous,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 142, 141, 141),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 7),
                    Text(
                      '${'(' + off}% OFF)',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 255, 94, 0)),
                    )
                  ],
                ),
                Text(
                  'Best Price ₹' + best + 'with coupon',
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 11,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset('assets/images/heart.png')
          ],
        )
      ],
    ),
  );
}

Widget navDraw(title) {
  return InkWell(
    onTap: () {},
    splashColor: Colors.pink,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 17.0, bottom: 12, top: 12),
          child: Text(
            title,
            style: const TextStyle(
                color: Color.fromARGB(221, 0, 0, 0), fontSize: 15),
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
      ],
    ),
  );
}
