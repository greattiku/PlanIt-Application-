import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Models/schedule/user_model.dart';

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
    var isFollowed = 'Following'.obs;
    var notFollowed = 'Follow'.obs;
    var userFollowing = ''.obs;
    
    UserModel userModel = UserModel();
     followed(){
        if(userModel.isFollowing == true){
         userFollowing.value = 'Following'; 
        } 
         else{
          userFollowing.value = 'Follow';
         }
    }

}