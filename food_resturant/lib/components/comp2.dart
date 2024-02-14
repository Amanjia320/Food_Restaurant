// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReusableContainer1 extends StatelessWidget {
  String title;
  IconData icon;
  ReusableContainer1({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          color:
              title == 'Dinner' ? Colors.amber.shade400 : Colors.grey.shade400,
          borderRadius: BorderRadius.circular(7),
          border: Border.all(width: 1, color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Row(
          children: [
            Icon(
              icon,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
