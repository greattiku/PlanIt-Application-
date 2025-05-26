import 'package:flutter/material.dart';

import '../Constants/custom_textstyles.dart';
import '../Widgets/activity/activity2.dart';
import '../Models/schedule/schedule_model.dart';

class Activity2Screen extends StatelessWidget {
  const Activity2Screen({super.key, required this.scheduleModel});
  final ScheduleModel scheduleModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              }, 
              icon: Icon(Icons.arrow_back)),//change to svg image
        
              centerTitle: true,
              title: Text('Activity',
              style: titleLargeBold.copyWith(
                fontSize: 18,
              ),
              ),
              actions: [
                Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(onPressed: (){}, 
              icon: Icon(Icons.more_vert_rounded)),
            ),//change to svgimage
              ],
            ),
        body:Activity2(sch: scheduleModel),
      ),
    );
  }
}