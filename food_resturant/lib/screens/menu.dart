import 'package:flutter/material.dart';
import 'package:food_resturant/components/comp4.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
          child: ListView(children: [
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Dinner Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy dinner',
              itemimages: 'assets/images/kabab.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Super Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy super',
              itemimages: 'assets/images/supersolo.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Lunch Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy Lunch',
              itemimages: 'assets/images/tosto.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Snack Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy Snack',
              itemimages: 'assets/images/pretzels.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Dinner Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy dinner',
              itemimages: 'assets/images/kabab.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Super Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy super',
              itemimages: 'assets/images/supersolo.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Lunch Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy Lunch',
              itemimages: 'assets/images/tosto.png',
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer3(
              title: 'Menu for Dinner',
              title2: 'Snack Menu',
              iconn: Icons.favorite,
              title1: 'Lets Enjoy Snack',
              itemimages: 'assets/images/pretzels.png',
            ),
          ]),
        ),
      ),
    );
  }
}
