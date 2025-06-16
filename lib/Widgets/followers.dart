import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';
import 'package:plan_it/Utilities/extensions.dart';
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
            TextButton(onPressed: (){}, 
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
              itemCount: userList.length,
              itemBuilder: (context, index){
                final  users = userList[index];
                return SizedBox(
                  height: 4.0.h,
                  child: UserList(userModel: users,index: index,));
              });
          }
        )
    ],
    );
  }
}