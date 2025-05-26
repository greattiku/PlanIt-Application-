import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Models/schedule/schedule_model.dart';
import 'package:plan_it/Screens/activity2_screen.dart';
import 'package:plan_it/Utilities/extensions.dart';

import '../Constants/colors.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key,
  required this.scheduleModel
  });
  final ScheduleModel scheduleModel;

 
  @override
  Widget build(BuildContext context) {
      int totalProgress = 3;
      int progressCovered = 1;
     double progress= progressCovered/totalProgress;
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity2Screen(scheduleModel: scheduleModel)));
      },
      child: Container(
        width: 390.0.w,
        height: 105.0.h,
        decoration: BoxDecoration(
          color: AppColors.whiteTextColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.0,
            color: AppColors.borderColor
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, ),//replace 4 for 12= check it
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Row(
                      children: [
                        SizedBox(height: 2.0.h,),
                           scheduleModel.icon1 ?? const SizedBox(),
                            const SizedBox(width: 5,),
                          Text(scheduleModel.title ?? '',
                           style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.blackTextColor
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(height: 5.0.h,),
                   Text(scheduleModel.subTitle ?? '',
                    style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.ashTextColor
                     ),
                   ),
                   SizedBox(height: 5.0.h,),
                  if (scheduleModel.progressLabel !=null) Padding(
                 padding: const EdgeInsets.only(top: 4, right: 4),//check it for correct one
                 child: Stack(
                children: [
                SizedBox(
                  height: 25.0.h,
                  width: 300.0.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: progress,
                      backgroundColor: AppColors.borderColor,
                      color: AppColors.appPrimaryColor,
                    ),
                  ),
                ),
                Positioned(
                  left: (350 * progress) - 90,
                  top: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text('Status: 1hr',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.whiteTextColor
                    ),
                    ),
                  )),
                 Positioned(
                  right: 5,
                  top: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text('2hr Left',
                    style: GoogleFonts.inter(fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.blackTextColor
                    ),
                      ),
                  ), ),
              ],
               ),
              ) else const SizedBox(),
              Row(
               children: [
              scheduleModel.icon ?? const SizedBox(),
              Text(scheduleModel.time ?? '',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: AppColors.appPrimaryColor
              ),
              ), 
                ],
                ),
                  ],
                ),
                scheduleModel.icon2 ?? const SizedBox()
             ])
            ],
          ),
        ),
      ),
    );
  }
}
