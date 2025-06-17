import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/suggested_followers.dart';
import 'package:plan_it/Widgets/user_list.dart';
import '../Constants/app_strings.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {

  var controller = Get.find<CommunityController>();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recent Followers',
            style: titleMediumBold,
            ),
            TextButton(onPressed: (){
              Get.to(SeeAllFollowers());
            }, 
            child: Text('See all',
            style: titleSmall.copyWith(
              color: AppColors.appPrimaryColor
            ),
            ))
          ],
        ),
        SizedBox(height: 10.0.h,),
    
        Obx(
           () {
            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: userList.length > 5 ? 5 : userList.length,
              itemBuilder: (context, index){
                final  users = userList[index];
                return SizedBox(
                  height: 70.0.h,
                  child: UserList(userModel: users,index: index,));
              });
          }
        ),
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Suggested Followers',
            style: titleMediumBold,
            ),
          ],
        ),
        SizedBox(height: 20.0.h,),
    
        Obx(
           () {
            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: sugestedFollowers.length,
              itemBuilder: (context, index){
                final  users = sugestedFollowers[index];
                return SizedBox(
                  height: 70.0.h,
                  child: SuggestedFollowers(userModel: users,index: index,));
              });
          }
        )
    ],
    );
  }
}

class SeeAllFollowers extends StatefulWidget {
  const SeeAllFollowers({super.key});

  @override
  State<SeeAllFollowers> createState() => _SeeAllFollowersState();
}

class _SeeAllFollowersState extends State<SeeAllFollowers> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:  Text('Followers',
                      style: titleMediumBold,
                      ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                   () {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: userList.length,
                      itemBuilder: (context, index){
                        final  users = userList[index];
                        return SizedBox(
                          height: 70.0.h,
                          child: UserList(userModel: users,index: index,));
                      });
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}