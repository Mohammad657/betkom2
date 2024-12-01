import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/button_categories.dart';
import 'package:betkom2/Models/text_field_categories.dart';
import 'package:flutter/material.dart';

class PlumbingPage extends StatelessWidget {
  static String id = "Plumbing_Page";

  const PlumbingPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        centerTitle: true,
        title: const Text(
          "Plumbing",
          style: TextStyle(
              fontFamily: kFontFamily, fontSize: 20, color: Colors.black),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.yellow,
            ]),
          ),
        ),
      ),
      body: Container(
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
              "Please fill the Form",
              style: TextStyle(fontFamily: kFontFamily, fontSize: 40),
            )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 450,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  color: Colors.amber[200],
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: Text(
                        "Problem Description :",
                        style: TextStyle(fontFamily: kFontFamily, fontSize: 20),
                      ),
                    ),
                    TextFieldCategoryOnChanged(
                        hintText: "Description",
                        onChanged: (data) {},
                        obsecure: false,
                        color: Colors.grey),
                    Row(
                      children: [
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: kFontFamily,
                              fontSize: 20),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Flexible(
                              child: Text(
                            "Address :",
                            style: TextStyle(
                                fontFamily: kFontFamily, fontSize: 20),
                          )),
                        ),
                        Flexible(
                            child: TextFieldCategoryOnChanged(
                                hintText: "address",
                                onChanged: (data) {},
                                obsecure: false,
                                color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: kFontFamily,
                              fontSize: 20),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Flexible(
                              child: Text(
                            "Street :",
                            style: TextStyle(
                                fontFamily: kFontFamily, fontSize: 20),
                          )),
                        ),
                        Flexible(
                            child: TextFieldCategoryOnChanged(
                                hintText: "Street",
                                onChanged: (data) {},
                                obsecure: false,
                                color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: kFontFamily,
                              fontSize: 20),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Flexible(
                              child: Text(
                            "Phone Number :",
                            style: TextStyle(
                                fontFamily: kFontFamily, fontSize: 20),
                          )),
                        ),
                        Flexible(
                            child: TextFieldCategoryOnChanged(
                                hintText: "Phone",
                                onChanged: (data) {},
                                obsecure: false,
                                color: Colors.grey)),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "*",
                          style: TextStyle(
                              color: Colors.red,
                              fontFamily: kFontFamily,
                              fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 10),
                          child: Flexible(
                              child: Text(
                            "Determine your location :",
                            style: TextStyle(
                                fontFamily: kFontFamily, fontSize: 20),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/Images/17448-removebg-preview.png",
                      width: 90,
                      height: 90,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: ButtonCategory(
                          text: "Submit",
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    content: SizedBox(
                                        height: 300,
                                        width: 100,
                                        child: ListView(
                                          children: [
                                            const SizedBox(
                                              height: 80,
                                            ),
                                            const Center(
                                              child: Text(
                                                "Reserve time :",
                                                style: TextStyle(
                                                    fontFamily: kFontFamily,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            const TimeDatePicker(),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            ButtonCategory(
                                                text: "Confirm",
                                                onTap: () {},
                                                colorButton: Colors.green,
                                                colorText: Colors.white,
                                                width: 50)
                                          ],
                                        )),
                                  );
                                });
                          },
                          colorButton: Colors.amber,
                          colorText: Colors.white,
                          width: 80),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
