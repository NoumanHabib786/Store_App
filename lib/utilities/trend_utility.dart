import 'package:flutter/material.dart';

import 'app_color.dart';

class TrendUtil extends StatefulWidget {
  final String img;
  final String name;
  final int price;

  const TrendUtil(
      {Key? key, required this.img, required this.name, required this.price})
      : super(key: key);

  @override
  State<TrendUtil> createState() => _TrendUtilState();
}

class _TrendUtilState extends State<TrendUtil> {
  bool favrt = true;

  void toggle() {
    setState(() {
      favrt = !favrt;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 2)),
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
                    widget.img.toString(),
                    fit: BoxFit.cover,
                    width: 180,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 250, top: 10),
                child: InkWell(
                  onTap: () => toggle(),
                  child: Icon(
                    favrt ? Icons.favorite : Icons.favorite_border_rounded,
                    color: primary,
                    size: 30,
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.name.toString(),
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$" + widget.price.toString(),
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
    );
  }
}
