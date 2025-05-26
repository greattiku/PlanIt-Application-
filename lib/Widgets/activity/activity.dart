import 'package:flutter/material.dart';
import 'package:plan_it/Utilities/extensions.dart';

import '../../Constants/app_Strings.dart';
import '../../Constants/colors.dart';
import '../../Constants/custom_textstyles.dart';
import '../../Models/schedule/schedule_model.dart';
import '../schedule.dart';
import '../widgets.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

//  List<ScheduleModel> schedule = [
//      ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Morning Meeting', subTitle: 'Time : 10:00 AM',progressLabel: 'Status: 1hr',),
//      ScheduleModel(icon1: SvgPicture.asset(AppImages.runnngIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
//      ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am',icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
//      ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
//   ];

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: [
              ElevatedButton(
              onPressed: (){
                
              }, 
              style: ButtonStyles.elevatedButtonStyle(
                backgroundColor: AppColors.appPrimaryColor,
                minimumSize: Size(173.0.w, 52.0.h),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8)
                  )
              ),
              child: Text('Current goals',
              style: titleSmall.copyWith(
                color: AppColors.whiteTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              )),

              ElevatedButton(
              onPressed: (){}, 
              style: ButtonStyles.elevatedButtonStyle(
                backgroundColor: const Color(0XFFF1F1F1),
                minimumSize: Size(173.0.w, 52.0.h),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8)
                 )
               ),
             child: Text('Completed',
             style: titleSmallBold.copyWith(
              color: AppColors.blackTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w700,
          ),
          ))
            ],
          ),
           SizedBox(height: 16.0.h,),
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

            SizedBox(height: 16.0.h,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(onPressed: (){}, 
              style: ButtonStyles.elevatedButtonStyle(
                backgroundColor: AppColors.appPrimaryColor,
                minimumSize: Size(390.0.w, 52.0.h),
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outline_rounded,color: AppColors.whiteTextColor,),//change to svg image

                  SizedBox(width: 7.0.w,),
                  Text('Add New Fitness Goal',
                  style: titleSmall.copyWith(
                    fontSize: 16,
                    color: AppColors.whiteTextColor
                  ),
                  )
                ],
              )
              ),
            )
        ],
      ),
    );
  }
}