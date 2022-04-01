import 'package:flutter/material.dart';
import 'package:shop_app_firebase/Configs/Helpers/icon_helpers.dart';
import 'package:shop_app_firebase/Screens/Bottom%20Bar/Components/body.dart';
import 'package:shop_app_firebase/Screens/Cart/cart_screen.dart';
import 'package:shop_app_firebase/Screens/Feeds/feeds_screen.dart';
import 'package:shop_app_firebase/Screens/Home/home_screen.dart';
import 'package:shop_app_firebase/Screens/Search/search_screen.dart';
import 'package:shop_app_firebase/Screens/User%20Info/user_info_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({ Key? key }) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        "page": HomeScreen(),
        "title": "Home Screen",
      },
      {
        "page": FeedsScreen(),
        "title": "Feeds Screen",
      },
      {
        "page": SearchScreen(),
        "title": "Search Screen",
      },
      {
        "page": CartScreen(),
        "title": "Cart Screen",
      },
      {
        "page": UserInfoScreen(),
        "title": "Profile Screen",
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(_pages[_selectedPageIndex]["title"] as String),
        // ),
        body: _pages[_selectedPageIndex]["page"] as Widget,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 0.1,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            onTap: _selectPage,
            elevation: 0,
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            currentIndex: _selectedPageIndex,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(IconHelpers.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(IconHelpers.rss),
                label: "Feeds",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                activeIcon: null,
                icon: Icon(null),
                label: "",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(IconHelpers.cart),
                label: "Cart",
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(IconHelpers.user),
                label: "User",
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.all(8.0),
          child: FloatingActionButton(
            hoverElevation: 10,
            splashColor: Colors.grey,
            tooltip: "Search",
            elevation: 4,
            child: Icon(IconHelpers.search),
            onPressed: (() {
              setState(() {
                _selectedPageIndex = 2;
              });
            }),
          ),
        ),
      ),
    );
  }
}