import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Controllers/cmmunity_controller.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/followers.dart';
import 'package:plan_it/Widgets/socials.dart';
import 'package:plan_it/Widgets/widgets.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {

  var controller = Get.find<CommunityController>();

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Obx(()=>
         Column(
           children: [
             Row(
                    children: [
                      ElevatedButton(
                      onPressed: (){
                        controller.changeSelectedIndex(0); 
                        
                      }, 
                      style: ButtonStyles.elevatedButtonStyle(
                        backgroundColor:  controller.getButtonColor(0),
                        minimumSize: Size(173.0.w, 52.0.h),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)
                          )
                      ),
                      child: Text('Socials',
                      style: titleSmall.copyWith(
                        color: controller.getTextColor(0),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      )),
                     
                      ElevatedButton(
                      onPressed: (){
                        controller.changeSelectedIndex(1);
                      }, 
                      style: ButtonStyles.elevatedButtonStyle(
                        backgroundColor: controller.getButtonColor(1),
                        minimumSize: Size(173.0.w, 52.0.h),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)
                         )
                       ),
                     child: Text('Followers',
                     style: titleSmallBold.copyWith(
                      color: controller.getTextColor(1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                  ),
                  ),),
             
                    ],
                  ),
                  SizedBox(height: 10,),
                  
              controller.selectedIndex.value == 0
              ? Socials()
              : Followers()
           ],
         ),
              
      ),
    );
  }
}