
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import '../Controllers/auth_controller.dart';

    
    var validationController =  Get.find<AuthController>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();
    List<TextEditingController> otpControllers = List.generate(4, (index) => TextEditingController(),);



   String? validateName(String? value){
    if(value == null || value.isEmpty){
      return 'Please enter your name';
    }  else{
      return null;
    }
  }

   String? validateEmail(String? value){
    if(value == null){
      return 'Please enter your email';
    } else if(!value.contains('@') || !value.contains('.')){
      return 'Invalid email address';
    } else{
      return null;
    }
  }

   String? validatePassword(String? value){
    if (value == null || value.isEmpty) {
        return 'Please enter a password';
      } else if (value.length < 8) {
        return 'Password must be at least 8 characters';
      } else if (!value.contains(RegExp(r'[A-Z]'))) {
        return 'Password must contain at least one uppercase letter';
      } else if (!value.contains(RegExp(r'[a-z]'))) {
        return 'Password must contain at least one lowercase letter';
      } else if (!value.contains(RegExp(r'[0-9]'))) {
        return 'Password must contain at least one number';
      }
        return null;
  } 


        String? validateConfirmPassword(String? value){
        if(value == null){
          return 'Please confirm your password';
        } else if (value != passwordController.text){
          return 'Passwords do not match';
        }else if(value == passwordController.text ){
          validationController.isPasswordMatch.value = true;
        } else{
          validationController.isPasswordMatch.value = false;
        }
          return null;
      } 




      bool  validateOtp() {
           String otpValue = '';
         for (var sum in otpControllers) {
            otpValue += sum.text;
        }

         if (otpValue.isEmpty || otpValue.length != otpControllers.length) {
          Get.snackbar('Failed', 'Please enter a valid value');
              return false;
        } else if (otpValue == validationController.validValue) {
           validationController.isOtpCorrect.value = true;
           signUp('', '');
              return true;
        } else {
           validationController.isOtpCorrect.value = false;
           Get.snackbar('failed', 'Invalid OTP');
           validationController.clearOtpFields();
              return false;
       }
   }

      void countDown(){
        validationController.isTimerRunning = true;
        Timer.periodic(Duration(seconds: 1), (timer){
            if(validationController.timeLeft.value > 0){
              validationController.timeLeft.value--;
              print('timer is ${validationController.timeLeft.value}');
            } else{
              timer.cancel();
              validationController.isTimerRunning = false;
            }
        });
      }

      void resetTimer(){
        if (!validationController.isTimerRunning) {
         validationController.timeLeft.value = 60;
        //  sendOTP();
        countDown();
        }
      }

      void signUp(String data,String value){
      Get.snackbar(
        '',
        '',
        titleText: Center(
          child: Text('Success', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.whiteTextColor),),
        ),
        messageText: Center(
          child: Text('Account created Successfully!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.whiteTextColor),),
        ),
        backgroundColor: AppColors.appPrimaryColor,
        duration: Duration(seconds: 3),
        );
  }

    void signIn(String data,String value){
       emailController.text;
       passwordController.text;
      Get.snackbar(
        '',
        '',
        titleText: Center(
          child: Text('Success', 
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.whiteTextColor),),
        ),
        messageText: Center(
          child: Text('Logged in Successfully!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.whiteTextColor),),
        ),
        backgroundColor: AppColors.appPrimaryColor,
        duration: Duration(seconds: 3),
        );
  }


