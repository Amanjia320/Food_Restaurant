// ignore_for_file: override_on_non_overriding_member, must_call_super, prefer_const_constructors_in_immutables

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_resturant/screens/menu.dart';
import 'package:food_resturant/screens/setting.dart';

import 'home.dart';

void main() {
  runApp(CookingScreen1());
}

class CookingScreen1 extends StatefulWidget {
  CookingScreen1({super.key});

  @override
  State<CookingScreen1> createState() => _CookingScreen1State();
}

class _CookingScreen1State extends State<CookingScreen1> {
  final _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   centerTitle: true,
          //   title: const Text('Curved Navigation Bar'),
          //   // backgroundColor: const Color.fromARGB(255, 255, 240, 219),
          //   //foregroundColor: Colors.black,
          // ),
          body: PageView(
            controller: _pageController,
            children: <Widget>[
              HomeScreen(),
              const MenuScreen(),
              const SettingScreen(),
            ],
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.amber.shade300,
            buttonBackgroundColor: Colors.white,
            //color: const Color.fromARGB(255, 255, 240, 219),
            height: 60,
            items: const <Widget>[
              Icon(
                Icons.home,
                size: 30,
                // color: Colors.red,
              ),
              Icon(
                Icons.menu,
                size: 30,
                // color: Colors.deepPurpleAccent,
              ),
              Icon(
                Icons.settings,
                size: 30,
                //color: Colors.green,
              ),
            ],
            onTap: (index) {
              _pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut);
            },
          ),
        ),
      ),
    );
  }
}
