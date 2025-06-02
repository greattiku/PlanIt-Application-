import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Screens/pages_screen.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/community.dart';
import 'package:plan_it/Widgets/widgets.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  controller.currentPageIndex.value = controller.previousPageIndex.value;
                }, 
                icon: Icon(Icons.arrow_back)),
               
                Text('Community',
                style: titleMediumBold.copyWith(
                  fontSize: 18
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(onPressed: (){
                  
                  }, 
                  child: Text('Make a Post',
                  style: titleSmall.copyWith(
                    color: AppColors.appPrimaryColor,
                    fontSize: 16,
                  ))),
                )
              ],
            ),
      
           Community()
          ],
        ),
    );
  }
}