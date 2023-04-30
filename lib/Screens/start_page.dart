import 'package:e_commerce_cloth_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var pagecontroller = PageController();
  List images = ["assets/image1.jpg", "assets/imag2.jpg", "assets/image3.jpg"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: PageView.builder(
              controller: pagecontroller,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.asset(images[index], fit: BoxFit.cover),
                );
              },
            )),
            SizedBox(height: 30,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                textAlign: TextAlign.center,
                "Your Appearence  Shows Your Quality",
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Text(
                textAlign: TextAlign.center,
                "Change The Quality of Your\n Appreance With Mughal's Cloth Now :)",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: SmoothPageIndicator(
                controller: pagecontroller,
                count: images.length,
                effect: const ExpandingDotsEffect(
                  dotHeight: 10,
                  activeDotColor: Colors.black45,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0  ,vertical: 12),
              child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: Text("Click here for Continue"),
                    style: ButtonStyle(
                        textStyle:
                            MaterialStatePropertyAll(TextStyle(fontSize: 16)),
                        elevation: MaterialStatePropertyAll(20),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                  )),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
