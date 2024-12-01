import 'package:betkom2/constant.dart';
import 'package:betkom2/Models/button_categories.dart';
import 'package:betkom2/Models/drop_down_menu_categories.dart';
import 'package:betkom2/Models/snack_bar_categories.dart';
import 'package:betkom2/Models/text_field_categories.dart';
import 'package:flutter/material.dart';

class ElectricalAppliances extends StatefulWidget {
  const ElectricalAppliances({super.key});
  static String id = "Electrical_Appliances";

  @override
  State<ElectricalAppliances> createState() => _ElectricalAppliancesState();
}

class _ElectricalAppliancesState extends State<ElectricalAppliances> {
  GlobalKey<FormState> formKey = GlobalKey();
  late String lat;
  late String long;
  var image;

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
          "Electrical Devices",
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
                  height: 550,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.amber[200],
                  ),
                  child: ListView(
                    children: [
                      const SizedBox(
                        width: 20,
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
                              "Prblem Description :",
                              style: TextStyle(
                                  fontFamily: kFontFamily, fontSize: 20),
                            )),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: DropDownMenuElectricityService_Category(),
                      ),
                      TextFieldCategoryOnChanged(
                          hintText: " Description",
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
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Attach the photo :",
                          style:
                              TextStyle(fontFamily: kFontFamily, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: GestureDetector(
                          // onTap: ,
                          child: Container(
                            color: Colors.grey[200],
                            height: 200,
                            width: 30,
                            child: image == null
                                ? const Icon(Icons.camera_alt, size: 40)
                                : Image.file(image!),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            "*",
                            style: TextStyle(
                                color: Color.fromARGB(255, 218, 155, 150),
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
                      GestureDetector(
                          // onTap: openMap(lat,long),
                          child: Image.asset(
                        "assets/Images/17448-removebg-preview.png",
                        width: 90,
                        height: 90,
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ButtonCategory(
                            text: "Submit",
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                try {
                                  if (electricityProblem != null) {
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
                                                          fontFamily:
                                                              kFontFamily,
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
                                                      width: 30),
                                                ],
                                              )),
                                        );
                                      },
                                    );
                                  } else {
                                    showSnackBar(context, "Fill all fields");
                                  }
                                } catch (e) {
                                  showSnackBar(context, "$e");
                                }
                              }
                            },
                            colorButton: Colors.amber,
                            colorText: Colors.white,
                            width: 80),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
//  Future pickedImageFromGallery() async {
//     var pickedFile = await picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         image = File(pickedFile.path); // Convert XFile to File if needed
//       });
//       print('Image selected: ${pickedFile.path}');
//     } else {
//       print('No image selected.');
//     }
//   }
}
