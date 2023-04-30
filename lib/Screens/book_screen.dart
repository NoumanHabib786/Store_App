import 'package:e_commerce_cloth_app/utilities/app_color.dart';
import 'package:flutter/material.dart';

class BookScreen extends StatefulWidget {
  final String image;
  final String bname;
  final int bprice;

  const BookScreen(
      {Key? key,
      required this.image,
      required this.bname,
      required this.bprice})
      : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    int ap = widget.bprice;
    int cd = ap * count;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              child: Image.asset(
                widget.image.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.bname.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  "\$" + cd.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              "This is the best cloth ever and you would love to do this. After buying this shirt you would love this. ",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
          ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(12),
              color: primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (count == 0) {
                              return;
                            } else {
                              count--;
                            }
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            minimumSize: MaterialStatePropertyAll(Size(30, 0))),
                        child: Text("-", style: TextStyle(fontSize: 20)),
                      ),
                      Text(
                        count.toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            minimumSize: MaterialStatePropertyAll(Size(30, 0))),
                        child: Text("+", style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  )
                ],
              )),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (count == 0) {
                      print("please buy something");
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 30,
                            title: Text("Please Confirm !"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("cancel")),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(const SnackBar(
                                        padding: EdgeInsets.all(20),
                                        content:
                                            Text("Thanks For Ordering Us :)"),
                                        elevation: 20,
                                        duration: Duration(seconds: 2),
                                      ));
                                    });
                                  },
                                  child: Text("Buy")),
                            ],
                          );
                        },
                      );
                    }
                  });
                },
                style: const ButtonStyle(
                    textStyle:
                        MaterialStatePropertyAll(TextStyle(fontSize: 18)),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(16))),
                child: Text("Click here to Buy"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
