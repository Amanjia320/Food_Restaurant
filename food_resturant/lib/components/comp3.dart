// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReusableContainer2 extends StatelessWidget {
  String title;
  IconData icon;
  IconData icons;
  ReusableContainer2(
      {Key? key, required this.icons, required this.title, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Colors.amber),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
          leading: Icon(
            icons,
            color: Colors.amber,
            size: 25,
          ),
          trailing: Icon(
            icon,
            color: Colors.amber,
            size: 25,
          ),
        ),
      ),
    );
  }
}
