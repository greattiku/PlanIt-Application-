import 'package:flutter/material.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';

import '../Models/activity/activity.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
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
          ),
       // body: Activity()
      ),
    );
  }
}