import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:plan_it/Constants/images.dart';
import 'package:plan_it/Screens/sign_up_screen.dart';
import 'package:plan_it/Widgets/activity/activity.dart';
import 'package:plan_it/Screens/community_screen.dart';

import '../Constants/colors.dart';
import '../Constants/custom_textstyles.dart';
import '../Controllers/page_controllers.dart';
import 'activity_screen.dart';
import 'home_screen.dart';

class PagesScreen extends StatefulWidget {
  const PagesScreen({super.key});

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}
    var controller = Get.find<PagesController>();
class _PagesScreenState extends State<PagesScreen> {

  final List<Widget> pages = [
      const HomeScreen(),
      const ActivityScreen(),
      const CommunityScreen()
    ];

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
         body: Obx(()=> pages[controller.currentPageIndex.value]),
        bottomNavigationBar: Obx(()=>
           SizedBox(
            height: 92,
             child: BottomNavigationBar(
              selectedLabelStyle: titleLargeBold.copyWith(fontSize: 14, fontWeight: FontWeight.w900),
              unselectedLabelStyle: titleLargeBold.copyWith(fontSize: 14, fontWeight: FontWeight.w900),
              iconSize: 24,
              selectedItemColor: AppColors.appPrimaryColor,
              currentIndex: controller.currentPageIndex.value,
              onTap: (index) {
                controller.changePageIndex(index);

                  },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                  label: 'Activty',
                  icon: Icon(Icons.insert_chart_rounded)),
                BottomNavigationBarItem(
                  label: 'Community',
                  icon: Icon(Icons.insert_chart_rounded))
              ]),
           ),
        ),
        
      ));
  }
}

 