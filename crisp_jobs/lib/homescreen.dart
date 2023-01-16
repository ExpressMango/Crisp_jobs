import 'package:flutter/material.dart';
import 'package:crisp_jobs/pages/Account.dart';
import 'package:crisp_jobs/pages/Message.dart';
import 'package:crisp_jobs/pages/Home.dart';
import 'package:crisp_jobs/pages/Settings.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() => runApp(MaterialApp(
      home: Homescreen(),
    ));

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedindex = 0;
  void _navigatebottombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [Message(), Home(), Account(), Settings()];
  @override
  Widget build(BuildContext contex00000t) {
    return Scaffold(
      body: _pages[_selectedindex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: GNav(
              selectedIndex: _selectedindex,
              onTabChange: _navigatebottombar,
              padding: EdgeInsets.all(15),
              backgroundColor: Colors.white,
              color: Colors.grey,
              gap: 8,
              tabs: [
                GButton(
                  textColor: Colors.grey,
                  icon: Icons.home,
                  text: 'Home',
                  iconActiveColor: Color(0xff4CA6A8),
                ),
                GButton(
                  textColor: Colors.grey,
                  icon: Icons.message_rounded,
                  text: 'Message',
                  iconActiveColor: Color(0xff4CA6A8),
                ),
                GButton(
                  textColor: Colors.grey,
                  icon: Icons.person,
                  text: 'Profile',
                  iconActiveColor: Color(0xff4CA6A8),
                ),
                GButton(
                  textColor: Colors.grey,
                  icon: Icons.settings,
                  text: 'Settings',
                  iconActiveColor: Color(0xff4CA6A8),
                ),
              ]),
        ),
      ),
    );
  }
}
