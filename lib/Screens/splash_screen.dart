

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Screens/pages_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      print('success===============');
      Get.to(PagesScreen());
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('E-Planner',
            style: titleLargeBold.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 36,
              color: Color(0XFF00FFFF),
            ),
            ),
            Text('Where everyone can organize',
            style: titleMedium.copyWith(
              color: AppColors.whiteTextColor
            ),
            )
          ],
        ),
      ),
    );
  }
}