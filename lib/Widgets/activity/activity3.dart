import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Constants/app_Strings.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/images.dart';
import 'package:plan_it/Models/schedule/schedule_model.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/schedule.dart';
import 'package:plan_it/Widgets/widgets.dart';

class Activity3 extends StatefulWidget {
  const Activity3({super.key,
    required this.scheduleModel,
  });

  final ScheduleModel scheduleModel;
  @override
  State<Activity3> createState() => _Activity3State();
}

class _Activity3State extends State<Activity3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          AppImages.fullMapImage,
          height: 569.0.h,
          ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Distance left',),
          Text('Avg Pace'),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text('Calories'),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(schedule.last.distance ?? ''),
          Padding(
            padding: const EdgeInsets.only(left: 23),
            child: Text(schedule.last.avgPace ?? '0'),
          ),
          Text(schedule.last.calories1?? '0'),
        ],
      ),
        SizedBox(height: 15.0.h,),
        Container(
          height: 82.0.h,
          width: 88.0.w,
          decoration: BoxDecoration(
            color: AppColors.appPrimaryColor,
            borderRadius: BorderRadius.circular(360),
          ),
          child: Center(
            child: Text('Record',
                    style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteTextColor,
                    )
                    ),
          ),
        )
      ],
    );
  }
}