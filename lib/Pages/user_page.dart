import 'package:betkom2/Models/app_bar_final_view.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  static String id = "UserPage";

  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FinalViewAppBar(),
    );
  }
}
