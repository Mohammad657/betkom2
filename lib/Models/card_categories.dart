import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  CardCategories(
      {super.key,
      required this.image,
      required this.major,
      required this.color,
      required this.onTap,
      required this.bgColors});
  String image;
  String major;
  Color color;
  Color bgColors;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 100,
        width: 100,
        child: Card(
          color: bgColors,
          elevation: 10,
          child: Column(
            children: [
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
              Text(
                major,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: kFontFamily),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
