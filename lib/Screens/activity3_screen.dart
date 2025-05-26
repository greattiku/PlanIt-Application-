import 'package:flutter/material.dart';
import 'package:plan_it/Models/schedule/schedule_model.dart';
import 'package:plan_it/Widgets/schedule.dart';

import '../Constants/colors.dart';
import '../Constants/custom_textstyles.dart';
import '../Widgets/activity/activity3.dart';

class Activity3Screen extends StatefulWidget {
  const Activity3Screen({super.key, 
required this.scheduleModel,
  });
    final ScheduleModel scheduleModel;
  @override
  State<Activity3Screen> createState() => _Activity3ScreenState();
}

class _Activity3ScreenState extends State<Activity3Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: TextButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(8.0)
            ),
            child: Text('Back',
          style: titleSmall.copyWith(
            fontSize: 16,
            color: AppColors.blackTextColor
          ),
          ),),
          centerTitle: true,
          title: Text('Evening Walking',
                 style: titleLargeBold.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    color: const Color(0XFF000D0D),
                      ),
                    ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(onPressed: (){}, 
              icon: Icon(Icons.more_vert_rounded)),
            ),//change to svgImage
          ],
        ),
      body: Activity3(scheduleModel: widget.scheduleModel,),
          ));
  }
}