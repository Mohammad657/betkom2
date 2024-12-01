import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/button_categories.dart';
import 'package:betkom2/Models/card_categories.dart';
import 'package:betkom2/Models/services_categories.dart';
import 'package:betkom2/Pages/admin_log_in.dart';
import 'package:betkom2/Pages/User_Login.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InitialPage extends StatelessWidget {
  InitialPage({super.key});
  static String id = "Initial_Page";
  final List<String> imgCountryList = [
    'assets/Images/78969387_l_normal_none-1024x683-1.jpg',
    'assets/Images/Building-maintenance.jpg',
    'assets/Images/download.jfif',
    'assets/Images/OIP (1).jfif',
    'assets/Images/OIP.jfif'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.yellow]),
          ),
        ),
        title: const Center(
          child: Text(
            "Betkom",
            style: TextStyle(fontFamily: kFontFamily, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(173, 255, 235, 59), Colors.white])),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
                child: Text(
              "Welcome to Betkom ",
              style: TextStyle(fontSize: 30, fontFamily: kFontFamily),
            )),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: imgCountryList
                    .map(
                      (item) => Container(
                        child: Center(
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 500,
                          ),
                        ),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                )),
            const SizedBox(
              height: 40,
            ),
            const Center(
                child: Text(
              "Our services",
              style: TextStyle(fontSize: 20, fontFamily: kFontFamily),
            )),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
              image: "assets/Images/OIP__6_-removebg-preview.png",
              desc: "Plumbing",
            ),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
              image:
                  "assets/Images/523-5231668_yellow-electricity-icon-clipart-electricity-computer-png-cartoon-removebg-preview.png",
              desc: "Electricity",
            ),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
                image: "assets/Images/download__2_-removebg-preview.png",
                desc: "Internet Fiber"),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
                image: "assets/Images/OIP__7_-removebg-preview.png",
                desc: "Clothes Dry Clean"),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
                image: "assets/Images/R-removebg-preview.png",
                desc: "Cars Dry clean"),
            const SizedBox(
              height: 20,
            ),
            ServicesLogInCategories(
                image: "assets/Images/OIP__8_-removebg-preview.png",
                desc: "Air condition"),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ButtonCategory(
                  text: "Get Started",
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: SizedBox(
                              height: 300,
                              width: 100,
                              child: Column(
                                children: [
                                  const Text(
                                    "Who are you ?",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontFamily: kFontFamily),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  CardCategories(
                                      image:
                                          "assets/Images/R__1_-removebg-preview.png",
                                      major: "Admin",
                                      color: Colors.white,
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, AdminLogin.id);
                                      },
                                      bgColors: Colors.orange),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  CardCategories(
                                      image:
                                          "assets/Images/OIP__9_-removebg-preview.png",
                                      major: "User",
                                      color: Colors.white,
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, UserLogin.id);
                                      },
                                      bgColors: Colors.green),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  colorButton: Colors.green,
                  colorText: Colors.white,
                  width: 20),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                "Why you should use this application",
                style: TextStyle(
                    fontSize: 25, fontFamily: kFontFamily, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServicesCategories(
                    image:
                        'assets/Images/Screenshot_2024-10-22_210730-removebg-preview.png',
                    desc: 'HIGHER STANDARDS'),
                // const SizedBox(
                //   width: 80,
                // ),
                // const Spacer(
                //   flex: 1,
                // ),
                ServicesCategories(
                    image: 'assets/Images/OIP__3_-removebg-preview.png',
                    desc: 'LOW PRICE'),
                // const SizedBox(
                //   width: 80,
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServicesCategories(
                    image: 'assets/Images/OIP__4_-removebg-preview.png',
                    desc: 'REDUCE TIME AND EFFORT '),
                // const SizedBox(
                //   width: 60,
                // ),
                ServicesCategories(
                    image: 'assets/Images/OIP__5_-removebg-preview.png',
                    desc: 'EASY TO USE'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
