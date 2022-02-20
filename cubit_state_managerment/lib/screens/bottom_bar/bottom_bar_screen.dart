import 'package:cubit_state_managerment/screens/bar_item/bar_item_screen.dart';
import 'package:cubit_state_managerment/screens/bottom_bar/components/body.dart';
import 'package:cubit_state_managerment/screens/home/home_screen.dart';
import 'package:cubit_state_managerment/screens/search/search_screen.dart';
import 'package:cubit_state_managerment/screens/user/user_screen.dart';
import 'package:flutter/material.dart';

class BottomTabbarScreen extends StatefulWidget {
  const BottomTabbarScreen({ Key? key }) : super(key: key);

  @override
  _BottomTabbarScreenState createState() => _BottomTabbarScreenState();
}

class _BottomTabbarScreenState extends State<BottomTabbarScreen> {
  List pages = [
    HomeScreen(),
    BarItemScreen(),
    SearchScreen(),
    UserScreen(),
  ];

  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -2),
              color: Colors.black12,
              blurRadius: 8,
              blurStyle: BlurStyle.outer
            )
          ]
        ),
        child: BottomNavigationBar(
          onTap: ((index) {
            setState(() {
              currentIndex = index;
            });
          }),
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label: "Bar", icon: Icon(Icons.bar_chart_sharp)),
            BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
            BottomNavigationBarItem(label: "User", icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }
}