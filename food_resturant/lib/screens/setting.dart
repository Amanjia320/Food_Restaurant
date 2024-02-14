import 'package:flutter/material.dart';
import 'package:food_resturant/components/comp3.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black87,
          body: Column(
            children: [
              Container(
                height: 210,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.amber.shade400,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 50),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 40,
                              child: CircleAvatar(
                                radius: 39,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/images/undraw.png'),
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                'Aman Jia Malik',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'I/10/2 Islamabad',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ReusableContainer2(
                  icons: Icons.notification_add_outlined,
                  title: 'Notifications',
                  icon: Icons.toggle_on),
              const SizedBox(
                height: 15,
              ),
              ReusableContainer2(
                  icons: Icons.favorite,
                  title: 'Favourit List',
                  icon: Icons.double_arrow),
              const SizedBox(
                height: 15,
              ),
              ReusableContainer2(
                  icons: Icons.thumb_up,
                  title: 'Rate Us',
                  icon: Icons.double_arrow),
              const SizedBox(
                height: 15,
              ),
              ReusableContainer2(
                  icons: Icons.inventory_2_outlined,
                  title: 'Invite Friend',
                  icon: Icons.double_arrow),
              const SizedBox(
                height: 15,
              ),
              ReusableContainer2(
                  icons: Icons.feedback,
                  title: 'Feedback',
                  icon: Icons.double_arrow),
              const SizedBox(
                height: 15,
              ),
              ReusableContainer2(
                  icons: Icons.apps,
                  title: 'More Apps',
                  icon: Icons.double_arrow),
            ],
          )),
    );
  }
}
