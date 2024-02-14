// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  String title;
  IconData icons;
  String title1;
  IconData iconn;
  ReusableContainer(
      {Key? key,
      required this.title,
      required this.icons,
      required this.iconn,
      required this.title1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const Image(
              height: 200,
              width: 200,
              image: AssetImage('assets/images/chicken.png')),
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
                  title1,
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
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade300,
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        icons,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      '30min',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.amber.shade300,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(
                        iconn,
                        size: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    const Text(
                      'Easy lvl',
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
