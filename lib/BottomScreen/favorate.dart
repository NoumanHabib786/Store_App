import 'package:flutter/material.dart';

class FavorateScreen extends StatefulWidget {
  const FavorateScreen({Key? key}) : super(key: key);

  @override
  State<FavorateScreen> createState() => _FavorateScreenState();
}

class _FavorateScreenState extends State<FavorateScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
            child: Container(
      width: 220,
      height: 340,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey,width: 2)
      ),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/image1.jpg",
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100.0, top: 10),
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ]),
             SizedBox(height: 10,),
             Text(
              "Cloth 1 Stock Here",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$600",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19),
                ),
                Text("200 sold",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.grey)),
              ],
            )
          ],
        ),
      ),
    )));
  }
}
