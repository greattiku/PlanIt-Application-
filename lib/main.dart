import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Screens/pages_screen.dart';
import 'package:plan_it/Screens/sign_up_screen.dart';
import 'package:plan_it/bindings/app_bindings.dart';

void main() {
  MyBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //initialBinding: MyBindings(),
      home: PagesScreen(),
    );
  }
}

