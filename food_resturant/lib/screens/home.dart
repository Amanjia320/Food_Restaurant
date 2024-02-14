// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable, unused_local_variable, use_build_context_synchronously, non_constant_identifier_names

//import 'dart:ffi';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_resturant/components/comp1.dart';
import 'package:food_resturant/components/comp2.dart';
import 'package:food_resturant/screens/Pagedetail.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/provider.dart';

class HomeScreen extends StatefulWidget {
  String? images;
  String? title;
  IconData? icons;
  HomeScreen({Key? key, this.images, this.icons, this.title, re})
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedImage = '';
  String selectedTitle = '';
  String About = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade800,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Hi Aman',
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        'Ready to cook for dinner?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      //padding: EdgeInsets.only(top: 40),
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade300,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.white),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/undraw.png'))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ReusableContainer(
              title: 'Menu for Dinner',
              title1: 'Chicken Roast',
              icons: Icons.watch_later_outlined,
              iconn: Icons.fireplace,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Meal Category',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  Text(
                    'see all',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReusableContainer1(title: 'Dinner', icon: Icons.dining),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(
                        title: 'Lunch', icon: Icons.lunch_dining),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(
                        title: 'Super', icon: Icons.restaurant_menu),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(title: 'Dinner', icon: Icons.dining),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(
                        title: 'Lunch', icon: Icons.lunch_dining),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(
                        title: 'Super', icon: Icons.restaurant_menu),
                    const SizedBox(
                      width: 5,
                    ),
                    ReusableContainer1(
                        title: 'Lunch', icon: Icons.lunch_dining),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Consumer<FoodProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 2,
                        crossAxisSpacing: 2,
                      ),
                      itemCount: value.images.length,
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () async {
                            SharedPreferences sp =
                                await SharedPreferences.getInstance();
                            // Save details to SharedPreferences

                            sp.setString('selectedImage', value.images[index]);
                            sp.setString('selectedTitle', value.title[index]);
                            sp.setString('AboutImage', value.about[index]);
                            // Navigate to the new page

                            selectedImage = sp.getString('selectedImage') ?? '';
                            selectedTitle = sp.getString('selectedTitle') ?? '';
                            About = sp.getString('AboutImage') ?? '';
                            log(selectedImage);

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PageDetails(
                                        // selectedImage: value.images[index],
                                        // selectedTitle: value.title[index],
                                        // AboutImage: value.about[index],
                                        )));
                          },
                          child: Container(
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade600,
                              // gradient: LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: [
                              //     Colors.black87,
                              //     Colors.grey.shade400,
                              //   ],
                              // ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                    height: 100,
                                    width: 200,
                                    image: AssetImage(value.images[index])),
                                Text(
                                  value.title[index],
                                  style: const TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber.shade400,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber.shade400,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber.shade400,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber.shade400,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 17,
                                      color: Colors.amber.shade400,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}


 // Expanded(
            //   child: FutureBuilder(
            //       future: getFoodApi(),
            //       builder: (context, snapshot) {
            //         if (snapshot.connectionState == ConnectionState.waiting) {
            //           return Center(child: CircularProgressIndicator());
            //         } else if (snapshot.hasError) {
            //           return Text('Error: ${snapshot.error}');
            //         } else {
            //           return Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 20),
            //             child: GridView.builder(
            //                 physics: BouncingScrollPhysics(),
            //                 gridDelegate:
            //                     SliverGridDelegateWithFixedCrossAxisCount(
            //                         crossAxisCount: 2,
            //                         mainAxisSpacing: 2,
            //                         crossAxisSpacing: 2),
            //                 itemCount: snapshot.data!['hits'].length,
            //                 itemBuilder: (context, index) {
            //                   log("${snapshot.data!['hits'].length}");
            //                   return Container(
            //                     height: 300,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(10),
            //                       color: Colors.white,
            //                       gradient: LinearGradient(
            //                         begin: Alignment.topRight,
            //                         end: Alignment.bottomLeft,
            //                         colors: [
            //                           Colors.white70,
            //                           Colors.grey.shade300,
            //                         ],
            //                       ),
            //                     ),
            //                     child: Column(
            //                       children: [
            //                         snapshot.data!['hits'][index]['image'] !=
            //                                 null
            //                             ? Image.network(snapshot.data!['hits']
            //                                     [index]['image']
            //                                 .toString())
            //                             : Text("No Images")
            //                         // Image(
            //                         //     image: NetworkImage())
            //                       ],
            //                     ),
            //                   );
            //                 }),
            //           );
            //         }
            //       }),
            // ),


  // var data;
  // Future<Map?> getFoodApi() async {
  //   final response = await http.get(Uri.parse(
  //       'https://api.edamam.com/search?q=biryani&app_id=74b54af4&app_key=6eb2032f7eaf50143eb9a1ea8eff1840'));

  //   if (response.statusCode == 200) {
  //     log("Response ${response.statusCode}");
  //     Map data = jsonDecode(response.body);
  //     log("Response ${data}");

  //     return data;
  //   } else {
  //     log("Response ${response.statusCode}");
  //     return null;
  //   }
  // }