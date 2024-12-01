import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

class CardServicesCategory extends StatelessWidget {
  CardServicesCategory(
      {super.key,
      required this.image,
      required this.desc,
      required this.onTap,
      required this.color});
  String image;
  Color color;
  String desc;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 150,
        width: 100,
        child: Card(
          elevation: 20,
          color: color,
          //  const Color.fromARGB(255, 136, 198, 249),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                image,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                desc,
                style: const TextStyle(
                    fontFamily: kFontFamily, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SoonCardServicesCategory extends StatelessWidget {
  SoonCardServicesCategory(
      {super.key,
      required this.image,
      required this.desc,
      required this.onTap,
      required this.color});
  String image;
  Color color;
  String desc;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(children: [
        SizedBox(
          height: 150,
          width: 100,
          child: Card(
            elevation: 20,
            color: color,
            //  const Color.fromARGB(255, 136, 198, 249),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  desc,
                  style: const TextStyle(
                      fontFamily: kFontFamily, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            child: Container(
          height: 25,
          width: 50,
          decoration: const BoxDecoration(color: Colors.amber),
          child: const Center(
              child: Text(
            "Soon",
            style: TextStyle(fontFamily: kFontFamily, fontSize: 15),
          )),
        ))
      ]),
    );
  }
}
