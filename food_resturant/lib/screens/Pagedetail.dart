// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageDetails extends StatefulWidget {
  // final String selectedImage;
  // final String selectedTitle;
  // final String AboutImage;

  const PageDetails({
    Key? key,
    // required this.selectedImage,
    // required this.selectedTitle,
    // required this.AboutImage
  }) : super(key: key);

  @override
  State<PageDetails> createState() => _PageDetailsState();
}

class _PageDetailsState extends State<PageDetails> {
  String selectedImage = '';
  String selectedTitle = '';
  String About = '';
  @override
  void initState() {
    super.initState();
    FoodDetails();
  }

  Future<void> FoodDetails() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    selectedImage = sp.getString('selectedImage') ?? '';
    selectedTitle = sp.getString('selectedTitle') ?? '';
    About = sp.getString('AboutImage') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text(
            'Page Details',
            style: TextStyle(color: Colors.black, fontSize: 26),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber.shade400,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            children: [
              Image(height: 250, width: 300, image: AssetImage(selectedImage)),
              Text(
                selectedTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              Text(About),
            ],
          ),
        ),
      ),
    );
  }
}
