import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        Text('Recent Followers'),
        SizedBox(height: 10.0.h,),
    
        Obx(
           () {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: userList.length,
              itemBuilder: (context, index){
                final  users = userList[index];
                return UserList(userModel: users,index: index,);
              });
          }
        )
    ],
    );
  }
}