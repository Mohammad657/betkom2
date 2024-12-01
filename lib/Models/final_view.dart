import 'package:betkom2/Constant.dart';
import 'package:betkom2/Models/snack_bar_categories.dart';
import 'package:flutter/material.dart';

var password;

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  _FinalViewState createState() => _FinalViewState();
}

class _FinalViewState extends State<FinalView> {
  TextEditingController tec = TextEditingController();
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;
  bool _hasSymbols = false;
  bool _hasUpperCase = false;
  bool _hasLowerCase = false;

  /// Validation
  void passwordValidator(String password) {
    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      _hasPasswordOneNumber = false;
      if (AppRegExp.numericRegex.hasMatch(password)) {
        _hasPasswordOneNumber = true;
      }

      _hasSymbols = false;
      if (AppRegExp.symRegex.hasMatch(password)) _hasSymbols = true;

      _hasUpperCase = false;
      if (AppRegExp.hasUpperCase.hasMatch(password)) _hasUpperCase = true;

      _hasLowerCase = false;
      if (AppRegExp.hasLowerCase.hasMatch(password)) _hasLowerCase = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(
                height: 30,
              ),
              _buildForm(),
              const SizedBox(
                height: 30,
              ),
              CustomTile(
                isCheck: _isPasswordEightCharacters,
                title: "Contains at least 8 characters",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTile(
                isCheck: _hasUpperCase,
                title: "Contains Uppercase",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTile(
                isCheck: _hasLowerCase,
                title: "Contains Lowercase",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTile(
                isCheck: _hasPasswordOneNumber,
                title: "Contains at least 1 number",
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTile(
                isCheck: _hasSymbols,
                title: "Contains Symbols (?#@)",
              ),
              const SizedBox(
                height: 50,
              ),

              /// [Create Account] Button
            ],
          ),
        ),
      ),
    );
  }

  /// Header
  Widget _buildHeader() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  /// Form
  Widget _buildForm() {
    return TextFormField(
      controller: tec,
      validator: (value) {
        RegExp numericRegex = RegExp(r'^.{6,}$');
        RegExp symRegex = RegExp(r'[!@#$%^&*()]');
        RegExp hasUpperCase = RegExp(r'[A-Z]');
        RegExp hasLowerCase = RegExp(r'[a-z]');
        if (value!.isEmpty) {
          return "Password cannot be empty";
        }
        if (!numericRegex.hasMatch(value) &&
            symRegex.hasMatch(value) &&
            hasUpperCase.hasMatch(value) &&
            hasLowerCase.hasMatch(value)) {
          showSnackBar(context, "Weak Password");
        } else {
          return null;
        }
        return null;
      },
      onChanged: (data) {
        password = data;
        passwordValidator(password);
      },
      obscureText: !_isVisible,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.amber[300],
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
          icon: _isVisible
              ? const Icon(
                  Icons.visibility,
                  color: Colors.amber,
                )
              : Icon(
                  Icons.visibility_off,
                  color: Colors.grey.shade400,
                ),
        ),
        hintText: "Password",
        hintStyle:
            const TextStyle(fontFamily: kFontFamily, color: Colors.black),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.title,
    required this.isCheck,
  });

  final bool isCheck;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: isCheck ? Colors.green : Colors.red,
              border: isCheck
                  ? Border.all(color: Colors.transparent)
                  : Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 15,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: const TextStyle(color: Colors.black, fontFamily: kFontFamily),
        )
      ],
    );
  }
}

class AppRegExp {
  AppRegExp._();
  static final numericRegex = RegExp(r'[0-9]');
  static final symRegex = RegExp(r'[!@#$%^&*()]');
  static final hasUpperCase = RegExp(r'[A-Z]');
  static final hasLowerCase = RegExp(r'[a-z]');
}
