import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/theme/theme_provider.dart';
import 'package:food_delivery_app/auth/login_or_register.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: LoginOrRegister(
        onTap: () {},
      ),
    );
  }
}
