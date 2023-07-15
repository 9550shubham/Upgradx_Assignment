import 'package:flutter/material.dart';

List shopimages = [
  Image.asset('assets/images/pht1.jpg'),
  Image.asset('assets/images/pht2.jpg'),
  Image.asset('assets/images/pht3.jpg'),
  Image.asset('assets/images/pht4.jpg'),
  Image.asset('assets/images/pht5.jpg'),
];
List title = [
  'Get Myntra Voucher worth Rs.500',
  'Get Levi\'s Voucher worth Rs. 500',
  'Get SonyLiv Premium 1 Month\nSubscription',
  'Get Tokyo Talkies Voucher worth\nRs.400',
  'Get FLAT 12% OFF on Flipkart\nFlight  Bookings',
];

Widget section(title, index) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        shopimages[index],
        Container(
          width: 260,
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(7),
              bottomRight: Radius.circular(7),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ),
        ),
      ],
    ),
  );
}

navDraw(title) {
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
