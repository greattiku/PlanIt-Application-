import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';

class CommunityController extends GetxController{
  var selectedIndex = 0.obs;

  void changeSelectedIndex(int index){
    selectedIndex.value = index;
  }

  getButtonColor(int index){
    return selectedIndex.value == index ? AppColors.appPrimaryColor : const Color(0XFFF1F1F1);
  }
  getTextColor(int index){
    return selectedIndex.value == index ? AppColors.whiteTextColor : AppColors.blackTextColor;
  }

}