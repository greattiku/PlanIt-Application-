import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Constants/images.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/widgets.dart';

import '../Constants/colors.dart';

class EventProject extends StatelessWidget {
  const EventProject({super.key,
  required this.icon1,
  required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.buttonText,
  });
  final Widget icon1;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final Widget buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226.0.w,
      decoration: BoxDecoration(
        color: AppColors.whiteTextColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1.0,
          color: AppColors.borderColor,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                            icon1,
                            SizedBox(width: 5,),
                             Text(title,
                             style: titleLargeBold.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                             ),
                             ),
                           ],
                        ),
                          SizedBox(height: 4.0.h,),
                         Text(subTitle,
                         style: titleMediumBold.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.ashTextColor
                         ),
                         ),
                      ],
                    ),
                  ),
                ],
               ),
              ],
            ),
                Expanded(
                  child: Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(AppImages.backgroundHeartIcon,width: 113.0.w,height: 113.0.h,
                                     ),
                  )),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: ElevatedButton(onPressed: (){}, 
                    style: ButtonStyles.elevatedButtonStyle(
                        backgroundColor: AppColors.appPrimaryColor, 
                        minimumSize: const Size(180, 40),
                        borderRadius: BorderRadius.circular(8)
                       ),
                    child: buttonText,
                      ),
                  ),)
          ],
        ),
      ),
    );
  }
}


