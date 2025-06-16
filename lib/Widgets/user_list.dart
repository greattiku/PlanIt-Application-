import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';
import 'package:plan_it/Models/schedule/user_model.dart';
import 'package:plan_it/Utilities/extensions.dart';

class UserList extends StatelessWidget {
  UserList({
    super.key,
    required this.userModel,
    required this.index,
  });

  final UserModel userModel;
  final int index;

  var controller = Get.find<CommunityController>();

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(userModel.profilePicture ?? ''),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userModel.name ?? '',
                    style: titleSmall.copyWith(
                      fontWeight: FontWeight.w700
                    ),
                    ),
                    userModel.isFollowing ? Text('Follows you',
                    style: bodySmall.copyWith(
                      color: AppColors.ashTextColor
                    ),
                    ) : SizedBox(),
                    SizedBox(height: 10.0.h),
                    
                  ],
                ),
              ],
            ),
             InkWell(
                onTap: () => controller.toggleFollow(index),
                child: Container(
                  width: 80,
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                      color: userModel.isFollowing
                          ? AppColors.appPrimaryColor
                          : AppColors.whiteBackgroundColor,
                      border: userModel.isFollowing
                          ? Border.all(color: Colors.transparent)
                          :Border.all(color:AppColors.appPrimaryColor)),
                  child: Center(
                    child: Text(
                      userModel.isFollowing ? "Following" : "Follow",
                      style: titleSmallBold.copyWith(
                          color: userModel.isFollowing
                          ?AppColors.whiteTextColor
                          : AppColors.appPrimaryColor),
                          ),
                  ),
                      ),
                    ),
          ],
        ),
        SizedBox(height: 10.0.h),
        Divider(height: 1.0.h,thickness: 1,)
      ],
    );
  }
}
