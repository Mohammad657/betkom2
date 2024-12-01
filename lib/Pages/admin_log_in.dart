import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/button_categories.dart';
import 'package:betkom2/Models/snack_bar_categories.dart';
import 'package:betkom2/Models/text_field_categories.dart';
import 'package:betkom2/Pages/admin_sign_up_page.dart';

import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  static String id = "AdminLogin";

  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.yellow,
            ]),
          ),
        ),
        title: const Text(
          "Betkom",
          style: TextStyle(fontFamily: kFontFamily, color: Colors.black),
        ),
      ),
      body: Form(
        key: formKey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(173, 255, 235, 59), Colors.white]),
          ),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 130, top: 100),
                child: Text(
                  "Welcome Back Admin",
                  style: TextStyle(fontSize: 20, fontFamily: kFontFamily),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: 400,
                  width: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                          child: Text(
                        "Log in",
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: kFontFamily,
                            color: Colors.black),
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "Email",
                          onChanged: (data) {},
                          prefixIcon: const Icon(Icons.person),
                          obsecure: false,
                          color: Colors.amber),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "Password",
                          onChanged: (data) {},
                          prefixIcon: const Icon(Icons.lock),
                          obsecure: true,
                          color: Colors.amber),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ButtonCategory(
                            text: "Log in",
                            onTap: () {
                              setState(() {});
                              if (formKey.currentState!.validate()) {
                                try {} catch (e) {
                                  showSnackBar(context, "Something went wrong");
                                }
                              }
                            },
                            colorButton: Colors.green,
                            colorText: Colors.white,
                            width: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, AdminSignUp.id);
                              },
                              child: const Text(
                                "Don't have an account",
                                style: TextStyle(
                                    fontSize: 20, fontFamily: kFontFamily),
                              ))),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                          child: Text(
                        "Forget Password",
                        style: TextStyle(fontSize: 20, fontFamily: kFontFamily),
                      ))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
