import 'package:flutter/material.dart';

class cat_page extends StatefulWidget {
  final String catname;

  const cat_page({Key? key, required this.catname}) : super(key: key);

  @override
  State<cat_page> createState() => _cat_pageState();
}

class _cat_pageState extends State<cat_page> {
  List catimages = [
    "assets/t1.jpg",
      "assets/t2.jpg",
      "assets/t3.png",
      "assets/t4.jpg",
      "assets/t5.jpg",
      "assets/t6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.catname.toString()),
          centerTitle: true,
        ),
        body: GridView.builder(
          itemCount: catimages.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8),
                width: 300,
                color: Colors.blue,
                child: Image.asset(catimages[index],fit: BoxFit.cover,),
              );
            },),
      ),
    );
  }
}
