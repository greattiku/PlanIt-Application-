import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/app_validation.dart';
import 'package:plan_it/Constants/colors.dart';

class AuthController extends GetxController{
    var isPasswordObscured = true.obs;
    var isConfirmPasswordObscured = true.obs;
    var isPasswordMatch = false.obs;
    var isOtpCorrect = false.obs;
    var validValue ='1234';
    var timeLeft = 60.obs;
    var isTimerRunning = false;

    //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  

  passwordToggleObscure(){
    isPasswordObscured.value = !isPasswordObscured.value;
  }

  confirmPasswordToggleObscure(){
    isConfirmPasswordObscured.value =!isConfirmPasswordObscured.value;
  }

  @override
  void dispose(){
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    for (var controllers in otpControllers) {
      controllers.dispose();
    }
    super.dispose();
  }

    void clearOtpFields(){
    for (var controllers in otpControllers) {
      controllers.clear();
    }
  }
  

}