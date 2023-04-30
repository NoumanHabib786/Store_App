import 'package:flutter/material.dart';

import '../Screens/book_screen.dart';
import '../utilities/trend_utility.dart';

class ClothingScreen extends StatefulWidget {
  const ClothingScreen({Key? key}) : super(key: key);

  @override
  State<ClothingScreen> createState() => _ClothingScreenState();
}

class _ClothingScreenState extends State<ClothingScreen> {
  List list = [
    ["assets/imag2.jpg", "Best Shirt", 1200],
    ["assets/image1.jpg", "Best Trouser", 1000],
    ["assets/image3.jpg", "Best Suit", 1900],
    ["assets/image4.jpg", "Best Stich", 1900],
    ["assets/image5.jpg", "Best Style", 10200],
    ["assets/image6.jpg", "Best Hang", 19030],
    ["assets/image7.jpg", "Best Black Suit", 1300],
    ["assets/image8.jpg", "Best Suit", 1700],
    ["assets/image9.jpg", "Best Color", 2300],
    ["assets/image10.jpg", "Best Color", 4300],
    ["assets/image11.jpg", "Best Color", 9200],
    ["assets/image12.jpg", "Best Color", 5600],
    ["assets/image13.jpg", "Best Color", 9800],
    ["assets/image14.jpg", "Best Color", 2100],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookScreen(
                          image: list[index][0],
                          bname: list[index][1],
                          bprice: list[index][2]),
                    )),
                child: TrendUtil(
                  img: list[index][0],
                  name: list[index][1],
                  price: list[index][2],
                ),
              ),
            );
          }),
    );
  }
}
