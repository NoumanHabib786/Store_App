import 'package:e_commerce_cloth_app/Screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../MainPage.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            SizedBox(height: 100,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                 textAlign: TextAlign.start,
                "Welcome Back \non Mughal's Shop",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                textAlign: TextAlign.start,
                "Please Login Here \nFor The Best Variety of our shop",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0 , vertical: 12),
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8),
                              hintText: "Enter Username",
                              labelText: "Username",
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0 ),
                        child: TextFormField(
                          obscureText: passicon,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(12),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password?",
                                  style: TextStyle(wordSpacing: 1),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
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
                                child: Text("Login"),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        endIndent: 60,
                        indent: 60,
                        thickness: 1.5,
                        height: 1,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have a account ?"),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignInScreen(),
                                    ));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Center(
                            child: Text(
                              "or sign in with",
                              style: TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey[200],
                              child: Image.asset(
                                "assets/goole.png",
                                width: 40,
                              ),
                            ),
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey[200],
                              child: SvgPicture.asset("assets/facebook.svg"),
                            ),
                            CircleAvatar(
                              radius: 25,
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
