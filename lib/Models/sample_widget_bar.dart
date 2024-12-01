import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/services_card_categories.dart';

import 'package:betkom2/Pages/cars_dry_clean.dart';
import 'package:betkom2/Pages/electricity_devices.dart';
import 'package:betkom2/Pages/electricity_page.dart';
import 'package:betkom2/Pages/order_page.dart';
import 'package:betkom2/Pages/plumbing_page.dart';
import 'package:flutter/material.dart';

class SampleWidgetMainPage extends StatelessWidget {
  const SampleWidgetMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(173, 255, 235, 59), Colors.white]),
      ),
      child: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            "What's your problem ? ",
            style: TextStyle(fontSize: 40, fontFamily: kFontFamily),
          )),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CardServicesCategory(
                    image: "assets/Images/OIP__6_-removebg-preview.png",
                    desc: "Plumbing",
                    onTap: () {
                      Navigator.pushNamed(context, PlumbingPage.id);
                    },
                    color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                CardServicesCategory(
                    image:
                        "assets/Images/523-5231668_yellow-electricity-icon-clipart-electricity-computer-png-cartoon-removebg-preview.png",
                    desc: "Electricity",
                    onTap: () {
                      Navigator.pushNamed(context, ElectricityPage.id);
                    },
                    color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                SoonCardServicesCategory(
                    image: "assets/Images/download__2_-removebg-preview.png",
                    desc: "Internet Fiber",
                    onTap: () {},
                    color: Colors.white38),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                CardServicesCategory(
                    image: "assets/Images/OIP__7_-removebg-preview.png",
                    desc: "Clothes Dry Clean",
                    onTap: () {},
                    color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                CardServicesCategory(
                    image: "assets/Images/R-removebg-preview.png",
                    desc: "Cars Dry Clean",
                    onTap: () {
                      Navigator.pushNamed(context, CarDryCleanPage.id);
                    },
                    color: Colors.white38),
                const SizedBox(
                  width: 10,
                ),
                CardServicesCategory(
                    image: "assets/Images/OIP__8_-removebg-preview.png",
                    desc: "Electrical devices",
                    onTap: () {
                      Navigator.pushNamed(context, ElectricalAppliances.id);
                    },
                    color: Colors.white38),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SampleWidgetMainPageOrderPage extends StatelessWidget {
  const SampleWidgetMainPageOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OrderPage());
  }
}

class SampleWidgetMainPageApplicationsPage extends StatelessWidget {
  const SampleWidgetMainPageApplicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Applications Page'));
  }
}

class SampleWidgetMainPageNotificationsPage extends StatelessWidget {
  const SampleWidgetMainPageNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Notifications'));
  }
}

class SampleWidgetMainPageSettingPage extends StatelessWidget {
  const SampleWidgetMainPageSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Setting  Page'));
  }
}

class SampleWidgetMainPageProfilePage extends StatelessWidget {
  const SampleWidgetMainPageProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Profile Page'));
  }
}
