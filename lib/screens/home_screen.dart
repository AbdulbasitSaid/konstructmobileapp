import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:konstructapp/screens/feeds_screen.dart';
import 'package:konstructapp/screens/new_event_screen.dart';
import 'package:konstructapp/screens/profile_screen.dart';
import 'package:konstructapp/screens/search_event_screen.dart';

import 'notification_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  final List<Widget> tab = [
    FeedScreen(),
    SearchEventScreen(),
    NewEventScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: tab[_page],
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: Colors.orange,
          inactiveIconColor: Colors.orange,
          tabs: [
            TabData(iconData: Icons.home, title: 'Home'),
            TabData(iconData: Icons.search, title: 'Search'),
            TabData(
                iconData: Icons.add,
                title: 'new',
                onclick: () {
                  Navigator.pushNamed(
                    context,
                    NewEventScreen.routeName,
                  );
                }),
            TabData(iconData: Icons.notifications_none, title: 'Home'),
            TabData(iconData: Icons.person, title: 'Profile'),
          ],
          onTabChangedListener: (position) {
            setState(() {
              if (position == 5) {
                Navigator.pushNamed(context, NewEventScreen.routeName);
              } else
                _page = position;
            });
          },
        ),
//        bottomNavigationBar: CurvedNavigationBar(
//          color: Colors.purpleAccent,
//          backgroundColor: Colors.white,
//          buttonBackgroundColor: Colors.purple,
//          index: 0,
//          items: <Widget>[
//            Icon(
//              FontAwesomeIcons.home,
//              color: Colors.white,
//            ),
//            Icon(
//              FontAwesomeIcons.search,
//              color: Colors.white,
//            ),
//            Icon(
//              FontAwesomeIcons.plus,
//              color: Colors.white,
//            ),
//            Icon(
//              FontAwesomeIcons.bell,
//              color: Colors.white,
//            ),
//            Icon(
//              FontAwesomeIcons.user,
//              color: Colors.white,
//            ),
//          ],
//          onTap: (index) {
//            setState(() {
//              _page = index;
//            });
//          },
//        ),
      ),
    );
  }
}
