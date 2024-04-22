import 'package:attendence_app/components/secondary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottom_nav_provider.dart';
import 'bottom_nav/calender_page.dart';
import 'bottom_nav/home_page.dart';
import 'bottom_nav/profile_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, bottomNavBarProvider, _) {
        final List<Widget> pages = [
          HomePage(),
          CalendarPage(),
          ProfilePage(),
        ];

        return Scaffold(
          backgroundColor: Colors.deepPurple.shade100,
          appBar: const SecondaryAppBar(
            screenName: 'Attendance',
          ),
          body: pages[bottomNavBarProvider.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: bottomNavBarProvider.selectedIndex,
            selectedItemColor: Colors.blue,
            onTap: (index) {
              bottomNavBarProvider.setIndex(index);
            },
          ),
        );
      },
    );
  }
}

