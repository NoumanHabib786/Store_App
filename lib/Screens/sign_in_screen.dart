import 'package:e_commerce_cloth_app/Screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../MainPage.dart';
import 'home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool passicon = true;

  void toggle() {
    setState(() {
      passicon = !passicon;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                // textAlign: TextAlign.start,
                "Welcome to the \nMughal Cloth House",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                textAlign: TextAlign.start,
                "Please Login Here For The Best Experience",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: "Enter Username",
                              labelText: "Username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: "Enter your email",
                              labelText: "Email",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          obscureText: passicon,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              hintText: "Enter password",
                              labelText: "Password",
                              prefixIcon: Icon(Icons.lock_outlined),
                              suffixIcon: InkWell(
                                  onTap: () => toggle(),
                                  child: Icon(
                                      passicon ? Icons.visibility_off : Icons.visibility)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0),
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  textStyle:
                                  MaterialStatePropertyAll(TextStyle(fontSize: 17)),
                                  elevation: MaterialStatePropertyAll(30),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MainPage(),
                                    ));
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Sign up"),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      const Divider(
                        endIndent: 60,
                        indent: 60,
                        thickness: 2,
                        height: 1,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have a account!"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ));
                              },
                              child: const Text(
                                "Login ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Center(
                            child: Text(
                              "or sign in with",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[200],
                              child: Image.asset(
                                "assets/goole.png",
                                width: 40,
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[200],
                              child: SvgPicture.asset("assets/facebook.svg"),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[200],
                              child: SvgPicture.asset("assets/twitter.svg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
