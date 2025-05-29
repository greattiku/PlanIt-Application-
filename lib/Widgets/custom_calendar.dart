
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../Controllers/customcalendar_controller.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key, 
  });


  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}
  
class _CustomCalendarState extends State<CustomCalendar> {
    var controller = Get.find<CustomCalendarController>();
  
  List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    final now = DateTime.now();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => controller.selectDate(context),
          child: Container(
            width: double.infinity,
            height: 40.0.h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0.w,
                color: AppColors.borderColor
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_today),
                SizedBox(width: 10.0.w,),
                  Obx(()=>
                     Text(DateFormat('MMM, yyyy').format(controller.selectedDate.value),
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        
          SizedBox(height: 10),
  

          Row(
  children: [
    for (int i = 0; i < days.length; i++)
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Obx(()=>
           Container(
              decoration: BoxDecoration(
              color: controller.isToday(i)
                        ? AppColors.appPrimaryColor
                        : controller.isSelected(i)
                        ? Colors.blueAccent
                        : AppColors.whiteTextColor,

                border: Border.all(
                  color: controller.isToday(i)
                        ? AppColors.appPrimaryColor 
                        :controller.isSelected(i)
                        ? Colors.blueAccent
                        : AppColors.borderColor,
                ),
             borderRadius: BorderRadius.circular(8)
              ),
              child: 
                 InkWell(
                  onTap: () => controller.selectDay(i),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(days[i].toUpperCase(), 
                        style: titleSmallBold.copyWith(
                          color: controller.isToday(i) || controller.selectedDayIndex.value == i ? AppColors.whiteTextColor : AppColors.blackTextColor,
                        )),
                      ),
                      // Obx(()=>
                         Text(
                          DateFormat('d').format(
                            controller.selectedDate.value.subtract(Duration(days: controller.selectedDate.value.weekday))
                            .add(Duration(days: i))), 
                            style: bodySmall.copyWith(
                              color: controller.isToday(i) || controller.selectedDayIndex.value == i ? AppColors.whiteTextColor : AppColors.ashTextColor,)),
                      // ),
                    ],
                  ),
                ),
            ),
          ),
        ),
      ),
  ],
)

 

    ]);
  }
}


