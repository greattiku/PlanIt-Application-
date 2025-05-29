import 'package:flutter/material.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Screens/pages_screen.dart';
import '../Widgets/activity/activity.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Expanded(
        child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    controller.currentPageIndex.value = controller.previousPageIndex.value;
        
                  }, icon: Icon(Icons.arrow_back)),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text('Activity',
                    style: titleLargeBold.copyWith(
                      fontSize: 18,
                    ),
                    ),
                  ),
                ],
              ),
             Activity(),
            ],
          ),
      ),
    );
  }
}