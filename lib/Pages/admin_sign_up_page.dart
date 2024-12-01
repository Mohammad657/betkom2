import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/button_categories.dart';
import 'package:betkom2/Models/drop_down_menu_categories.dart';
import 'package:betkom2/Models/snack_bar_categories.dart';
import 'package:betkom2/Models/text_field_categories.dart';
import 'package:betkom2/Pages/admin_log_in.dart';

import 'package:flutter/material.dart';

var adminPassword;
var adminConfirmedPassword;

class AdminSignUp extends StatefulWidget {
  const AdminSignUp({super.key});
  static String id = "Admin_Sign_Up";

  @override
  State<AdminSignUp> createState() => _AdminSignUpState();
}

class _AdminSignUpState extends State<AdminSignUp> {
  bool isLoading = false;
  DateTime date = DateTime.now();
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
              const SizedBox(
                height: 90,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                "Welcome New Admin",
                style: TextStyle(fontSize: 20, fontFamily: kFontFamily),
              )),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: 550,
                  child: ListView(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 40, fontFamily: kFontFamily),
                      )),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "FirstName",
                          onChanged: (data) {},
                          obsecure: false,
                          color: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "LastName",
                          onChanged: (data) {},
                          obsecure: false,
                          color: Colors.black),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "Email",
                          onChanged: (data) {},
                          obsecure: false,
                          color: Colors.black,
                          prefixIcon: const Icon(Icons.email)),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFieldCategoryOnChanged(
                        hintText: 'Password',
                        onChanged: (data) {
                          adminPassword = data;
                        },
                        obsecure: true,
                        prefixIcon: const Icon(Icons.lock),
                        color: Colors.black,
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: "Confirm Password",
                          onChanged: (data) {
                            adminConfirmedPassword = data;
                          },
                          prefixIcon: const Icon(Icons.lock),
                          obsecure: true,
                          color: Colors.black),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.calendar_month),
                                hintText:
                                    '${date.day}/${date.month}/${date.year}',
                                hintStyle: const TextStyle(
                                  fontFamily: kFontFamily,
                                )),
                            onTap: () async {
                              DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: date,
                                  firstDate: DateTime(1970),
                                  lastDate: DateTime(2100));
                              if (newDate == null) {
                                return;
                              }
                              setState(() {
                                date = newDate;
                              });
                            }),
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 28,
                          ),
                          Text(
                            'Major',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: kFontFamily,
                                fontSize: 20),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          DropDownMenuAdminCategory(),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "State",
                            style: TextStyle(
                                fontFamily: kFontFamily,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          DropDownMenuNationality_Category(),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: ButtonCategory(
                          text: 'Sign up',
                          onTap: () {
                            setState(() {});
                            if (formKey.currentState!.validate()) {
                              try {
                                final numericRegex = RegExp(r'[0-9]');
                                final symRegex = RegExp(r'[!@#$%^&*()]');
                                final hasUpperCase = RegExp(r'[A-Z]');
                                final hasLowerCase = RegExp(r'[a-z]');
                                if (adminMajor != null && nationality != null) {
                                  if (numericRegex.hasMatch(adminPassword) &&
                                      symRegex.hasMatch(adminPassword) &&
                                      hasUpperCase.hasMatch(adminPassword) &&
                                      hasLowerCase.hasMatch(adminPassword)) {
                                    if (adminPassword ==
                                        adminConfirmedPassword) {
                                      showSnackBar(
                                          context, "Sign up successfully");
                                    } else {
                                      showSnackBar(context,
                                          "The password doesn't match");
                                    }
                                  } else {
                                    showSnackBar(context,
                                        "The password must contain UpperCase, LowerCase , Symbol , 8 Character , 1 number");
                                  }
                                } else {
                                  showSnackBar(context, "Fill all fields");
                                }
                              } catch (e) {}
                            }
                          },
                          colorButton: Colors.green,
                          colorText: Colors.white,
                          width: 200,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, AdminLogin.id);
                            },
                            child: const Text(
                              "Already have Account",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: kFontFamily),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//   }
//     Future<String> encryptAES()async {
//   final encrypted= await encrypter.encrypt(Password,iv: iv);
//   return encrypted.base64;
//   }
//    Future<UserCredential> registerUser() async {
//      var auth=FirebaseAuth.instance;
//              UserCredential user= await auth.createUserWithEmailAndPassword(email: signUpEmail!, password: Password!);
             
//     return user;
//   }
