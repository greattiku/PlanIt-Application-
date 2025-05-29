import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/colors.dart';

class CustomCalendarController extends GetxController{
  var selectedDate = DateTime.now().obs;
 //  var  today = DateTime.now().obs;
 var  selectedDayIndex = (-1).obs;

   selectDate(BuildContext context) async {
       final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
    );
      if (picked != null ) {
      selectedDate.value = picked;
      selectedDayIndex.value = picked.weekday%7;
  }
}
    void selectDay (int index){
      selectedDayIndex.value = index;
    }

  bool isToday(int index) {
    DateTime now = DateTime.now();
    int todayIndex = now.weekday;
    return index == todayIndex && selectedDate.value.day == DateTime.now().day 
    && selectedDate.value.month == DateTime.now().month 
    && selectedDate.value.year == DateTime.now().year;
  }


  bool isSelected(int index) {
    return index == selectedDayIndex.value;
  }

}