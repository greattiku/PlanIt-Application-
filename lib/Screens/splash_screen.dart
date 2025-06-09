

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

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  late AnimationController _animationController;
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(vsync: this,
      duration: Duration(seconds: 1),
    );
    _animationController.forward();
    Future.delayed(Duration(seconds: 2),(){
      Get.offAll(PagesScreen());
    });
  }
  
    @override
    void dispose(){
      _animationController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appPrimaryColor,
      body: Center(
        child: ScaleTransition(
          scale:  Tween<double>(
            begin: 0.0,
            end: 1.0
            // position: Tween<Offset>(//slidetransition
            // begin: Offset(0.0, 1.0),
            // end: Offset(0.0, 0.0)
          ).animate(
            CurvedAnimation(
              parent: _animationController, 
              curve: Curves.linear)
          ),
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
      ),
    );
  }
}