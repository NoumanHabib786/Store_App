import 'package:e_commerce_cloth_app/Screens/login_screen.dart';
import 'package:e_commerce_cloth_app/Tabs/clothing_Screen.dart';
import 'package:e_commerce_cloth_app/Tabs/trending_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List tablist = ["Trending ", " Clothing"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tablist.length,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text("Nouman Mughal"),
          titleSpacing: 30,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.notifications),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    )),
                child: CircleAvatar(
                  child: Icon(Icons.logout,size: 30,),
                ),
              ),
            ),
          ],
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicator: BoxDecoration(
                        color: primary,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)),
                    tabs: [
                      for (final tab in tablist)
                        Tab(
                          text: tab,
                        )
                    ]),
              ),
              const Expanded(
                child: TabBarView(children: [
                  Tab(
                    child: ClothingScreen(),
                  ),
                  Tab(
                    child: TrendingScreen(),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
