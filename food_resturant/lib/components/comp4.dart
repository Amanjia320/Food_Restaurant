// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:flutter/material.dart';

class ReusableContainer3 extends StatelessWidget {
  String title;
  String itemimages;
  String title1;
  String title2;
  IconData iconn;
  ReusableContainer3({
    Key? key,
    required this.title,
    required this.title2,
    required this.iconn,
    required this.title1,
    required this.itemimages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // List<String> itemimages = [
    //   'assets/images/pretzels.png',
    //   'assets/images/pretzels.png',
    //   'assets/images/pretzels.png',
    //   'assets/images/pretzels.png',
    // ];
    return Container(
        height: 180,
        width: 385,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black87,
              Colors.grey.shade400,
            ],
          ),
        ),
        child: Row(children: [
          Image(
            height: 110,
            width: 200,
            image: AssetImage(itemimages),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                      //fontStyle: FontStyle.italic,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title2,
                  style: TextStyle(
                      fontSize: 25,
                      //fontStyle: FontStyle.italic,
                      color: Colors.amber.shade400,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      iconn,
                      size: 18,
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      title1,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]));
  }
}
