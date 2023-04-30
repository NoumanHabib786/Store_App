import 'package:e_commerce_cloth_app/Screens/cat_screen.dart';
import 'package:flutter/material.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  List list = [
    ["assets/t1.jpg", Colors.white],
    ["assets/t2.jpg", Colors.black],
    ["assets/t3.png", Colors.white],
    ["assets/t4.jpg", Colors.black],
    ["assets/t5.jpg", Colors.white],
    ["assets/t6.jpg", Colors.black],
  ];
  List catname = ["T-SHIRTS", " HOODIES", "SHOES", "SHIRTS", "SHORTS", "JEANS"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => cat_page(
                  catname: catname[index],

                ),
              )),
          child: Stack(children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(5),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Image.asset(
                    list[index][0],
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
                left: 20,
                bottom: 20,
                child: Text(
                  catname[index].toString(),
                  style: TextStyle(
                      fontSize: 25,
                      letterSpacing: 1,
                      color: list[index][1],
                      fontWeight: FontWeight.bold),
                )),
            Positioned(
                left: 200,
                bottom: 20,
                child: Text(
                  "200 products",
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1,
                    color: list[index][1],
                  ),
                ))
          ]),
        );
      },
    ));
  }
}
