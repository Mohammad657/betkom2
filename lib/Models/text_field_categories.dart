import 'package:betkom2/Constant.dart';
import 'package:flutter/material.dart';

class TextFieldCategoryOnChanged extends StatelessWidget {
  TextFieldCategoryOnChanged({
    super.key,
    required this.hintText,
    required this.onChanged,
    @required this.prefixIcon,
    required this.obsecure,
    @required this.color,
  });
  String? hintText;
  Icon? prefixIcon;
  bool? obsecure;
  Color? color;
  var controller;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        obscureText: obsecure!,
        validator: (data) {
          if (data!.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.amber[300],
          hintText: hintText,
          hintStyle: TextStyle(color: color, fontFamily: kFontFamily),
        ),
      ),
    );
  }
}
