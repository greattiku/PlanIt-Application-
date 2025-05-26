import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Constants/app_strings.dart';
import 'package:plan_it/Screens/activity3_screen.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/schedule.dart';
import 'package:plan_it/Widgets/widgets.dart';

import '../../Constants/colors.dart';
import '../../Constants/custom_textstyles.dart';
import '../../Models/schedule/schedule_model.dart';

class Activity2 extends StatelessWidget {
   Activity2({super.key,
  required this.sch
  });
  final ScheduleModel sch;
  
  //   List<ScheduleModel> schedule = [
  //    ScheduleModel(icon1: SvgPicture.asset(AppImages.runnngIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
  //    ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am',icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
  //    ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
    
  // ];
  @override
  Widget build(BuildContext context) {
     int totalProgress = 3;
      int progressCovered = 1;
     double progress= progressCovered/totalProgress;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
          children: [
            Row(
              children: [
                sch.icon1 ?? const SizedBox(),
                SizedBox(width: 3.0.w,),
                Text(sch.title ?? 'HelloWorld',
                style: titleLargeBold.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 18
                ),
                ),
              ],
            ),
            SizedBox(height: 3.0.h,),
            Text(sch.km ?? 'Target',
                style: titleSmallBold.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.ashTextColor,
                )
                ),
            SizedBox(height: 10.0.h,),
              const Divider(thickness: 1.0, color: AppColors.borderColor,),

              SizedBox(
                height: 70.0.h,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Distance Left',
                          style: bodySmall.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.ashTextColor
                          ),
                          ),
                          SizedBox(height: 5.0.h,),
                          Text('2km',
                          style: titleSmallBold.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                        ],
                      )),
                      const VerticalDivider(thickness: 1, width: 5, color: AppColors.borderColor,),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Calories',
                          style: bodySmall.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.ashTextColor
                          ),
                          ),
                          SizedBox(height: 5.0.h,),
                          Text('100 Cal',
                          style: titleSmallBold.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                          )
                        ],
                      ))
                  ],
                ),
              ),

             SizedBox(height: 10.0.h,),
              const Divider(thickness: 1.0, color: AppColors.borderColor,),

               SizedBox(
                height: 70.0.h,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text('Avg pace',
                          style: bodySmall.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.ashTextColor
                          ),
                          ),
                          SizedBox(height: 5.0.h,),
                          Text('1km Cal',
                          style: titleSmallBold.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                          ),
                        ],
                      )),
                      const VerticalDivider(thickness: 1, width: 42, color: AppColors.borderColor,),
                    Expanded(
                      child: Column(
                        children: [
                          Text('Calories',
                          style: bodySmall.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.ashTextColor
                          ),
                          ),
                          SizedBox(height: 5.0.h,),
                          Text('100 Cal',
                          style: titleSmallBold.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                          ),
                          )
                        ],
                      ))
                  ],
                ),
              ),
              SizedBox(height: 10.0.h,),
              const Divider(thickness: 1.0, color: AppColors.borderColor,),
           
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                  SizedBox(
                    height: 40.0.h,
                    width: 390.0.w,
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
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Text('Status: 1hr',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.whiteTextColor
                      ),
                      ),
                    )),
                   Positioned(
                    right: 5,
                    top: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,right: 5),
                      child: Text('2hr Left',
                      style: GoogleFonts.inter(fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blackTextColor
                      ),
                        ),
                    ), ),
                ],
                 ),
              ),
              SizedBox(height: 20.0.h,),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Activity3Screen(scheduleModel: sch)));
              }, 
              style: ButtonStyles.elevatedButtonStyle(
                backgroundColor: AppColors.appPrimaryColor,
                minimumSize: Size(390.0.w, 52.0.h),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 7.0.w,),
                  Text('Continue Walking',
                  style: titleSmall.copyWith(
                    fontSize: 16,
                    color: AppColors.whiteTextColor
                  ),
                  ),
                ],
              )
              ),

              SizedBox(height: 20.0.h,),
                Text('Pending Activities',
                 style: titleLargeBold.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: const Color(0XFF000D0D),
                      ),
                    ),
                    SizedBox(
                    height: 10.0.h,
                    ),

               SizedBox(
              height: 390.0.h,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  final ScheduleModel  scheduleModel = ScheduleModel(
                     icon1: schedule[index].icon1, 
                    title: schedule[index].title, 
                    subTitle: schedule[index].subTitle,
                    icon: schedule[index].icon,
                    progressLabel: schedule[index].progressLabel,
                    time: schedule[index].time,
                    icon2: schedule[index].icon2,
                  );
                  return Schedule(scheduleModel: scheduleModel);
                    
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(height: 12,);
              }, 
              itemCount: schedule.length
              ),
            ),
          ],
      ),
    );
  }
}