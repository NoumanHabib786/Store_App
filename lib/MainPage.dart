import 'package:flutter/material.dart';

import 'BottomScreen/favorate.dart';
import 'Screens/home_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int seleted_index = 0;
  List pages = [
    HomeScreen(),
    FavorateScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[seleted_index],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            elevation: 20,
            labelTextStyle: MaterialStatePropertyAll(
                TextStyle(fontWeight: FontWeight.w700))),
        child: NavigationBar(
          selectedIndex: seleted_index,
          animationDuration: Duration(seconds: 1),
          onDestinationSelected: (value) {
            setState(() {
              seleted_index = value;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Person"),
          ],
        ),
      ),
    );
  }
}
