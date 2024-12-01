import 'package:betkom2/Models/splash.dart';
import 'package:betkom2/Pages/admin_log_in.dart';
import 'package:betkom2/Pages/admin_sign_up_page.dart';
import 'package:betkom2/Pages/cars_dry_clean.dart';
import 'package:betkom2/Pages/electricity_devices.dart';
import 'package:betkom2/Pages/electricity_page.dart';
import 'package:betkom2/Pages/Initial_page.dart';
import 'package:betkom2/Pages/plumbing_page.dart';
import 'package:betkom2/Pages/user_login.dart';
import 'package:betkom2/Pages/user_page.dart';
import 'package:betkom2/Pages/user_sign_up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          AdminSignUp.id: (context) => const AdminSignUp(),
          AdminLogin.id: (context) => const AdminLogin(),
          UserLogin.id: (context) => const UserLogin(),
          UserSignUp.id: (context) => const UserSignUp(),
          UserPage.id: (context) => const UserPage(),
          PlumbingPage.id: (context) => const PlumbingPage(),
          ElectricityPage.id: (context) => const ElectricityPage(),
          ElectricalAppliances.id: (context) => const ElectricalAppliances(),
          CarDryCleanPage.id: (context) => const CarDryCleanPage()
        },
        initialRoute: InitialPage.id);
  }
}
