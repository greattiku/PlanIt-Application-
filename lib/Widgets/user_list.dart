import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';
import 'package:plan_it/Models/schedule/user_model.dart';

class UserList extends StatelessWidget {
  UserList({super.key, required this.userModel});

  final UserModel userModel;

  var controller = Get.find<CommunityController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(userModel.profilePicture ?? ''),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userModel.name ?? ''),
                userModel.isFollowing == true
                    ? Text('Follows you')
                    : SizedBox(),
              ],
            ),
          ],
        ),

          InkWell(
              onTap: (){
                controller.followed();
              },
              child: Container(
                width: 80,
                height: 32,
                decoration: BoxDecoration(
                  color:
                      userModel.isFollowing == true
                          ? AppColors.appPrimaryColor
                          : Color(0XFFF1F1F1),
                ),
                child: Obx(
                  () {
                    return Text(
                      controller.userFollowing.value,
                      style: titleSmallBold.copyWith(
                        color:
                            userModel.isFollowing == true
                                ? AppColors.whiteTextColor
                                : AppColors.appPrimaryColor,
                      ),
                    );
                  }
                ),
            
                
              ),
            ),
          
        

      ],
    );
  }
}
