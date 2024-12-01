import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

class ServicesCategories extends StatelessWidget {
  ServicesCategories({super.key, required this.image, required this.desc});
  String image;
  String desc;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              image,
              width: 100,
              height: 100,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 50),
          child: Text(
            desc,
            style: const TextStyle(
                color: Colors.black, fontFamily: kFontFamily, fontSize: 15),
          ),
        ),
      ],
    );
  }
}

class ServicesLogInCategories extends StatelessWidget {
  String? image;
  String? desc;
  ServicesLogInCategories({super.key, required this.image, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(image!),
              Text(
                desc!,
                style: const TextStyle(fontSize: 30, fontFamily: kFontFamily),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
