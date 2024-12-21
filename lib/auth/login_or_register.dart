import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/login_screen.dart';
import 'package:food_delivery_app/Pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  final Function() onTap;
  const LoginOrRegister({super.key, required this.onTap});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) { // Fixed the syntax error by removing the `?`
      return LoginScreen(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages);
    }
  }
}
