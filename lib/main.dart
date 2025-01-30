import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/theme/theme_provider.dart';
import 'package:food_delivery_app/auth/login_or_register.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: MyApp(),
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
