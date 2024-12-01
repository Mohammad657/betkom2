import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(173, 255, 235, 59), Colors.white])),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.amber[200],
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Your problem :",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Plumbing",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Staff Name :",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Joney Dier",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Estimated time :",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "3:00-4:00 AM",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Status :",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "In progress",
                          style: TextStyle(
                              fontFamily: kFontFamily,
                              fontSize: 20,
                              color: Colors.orange),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
