import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Constants/images.dart';
import 'package:plan_it/Models/schedule/user_model.dart';
import 'package:plan_it/Widgets/categories.dart';
import 'package:plan_it/Widgets/custom_calendar.dart';
import 'package:plan_it/Widgets/event_project.dart';
import 'package:plan_it/Utilities/extensions.dart';
import '../Models/schedule/schedule_model.dart';
import '../Widgets/custom_calendar.dart';
import 'package:intl/intl.dart';

List<ScheduleModel> schedule = [
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Morning Meeting', subTitle: 'Time : 10:00 AM',progressLabel: 'Status: 1hr',),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.runnngIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am',icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
     ScheduleModel(distance: '2km', avgPace: '1km Cal', calories1: '100 Cal', calories2: '100 Cal', km: '3km'),
  ];

List<Categories> categories = [
    Categories(text: 'Meetings', pics: SvgPicture.asset(AppImages.runnngIcon,)), //change to svgimage
    Categories(text: 'Personal', pics: SvgPicture.asset(AppImages.walkingIcon)),//change to svgimage
    Categories(text: 'Work', pics: SvgPicture.asset(AppImages.cyclinigIcon)),//change to svgimage
    Categories(text: 'Deadlines', pics: SvgPicture.asset(AppImages.yogaIcon)),//change to svgimage
    Categories(text: 'Reminders', pics: SvgPicture.asset(AppImages.swimmingIcon)),//change to svgimage
    Categories(text: 'Work', pics: SvgPicture.asset(AppImages.walkingIcon)),//change to svgimage
    Categories(text: 'Meetings', pics: SvgPicture.asset(AppImages.runnngIcon)),//change to svgimage
  ];

   List<EventProject> projects = [
    EventProject(
      title: 'Project Alpha', subTitle: 'April 15th, 2025',  
      onPressed: (){}, buttonText: Text('Join Challenge',
      style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteTextColor
     )), 
     icon1: SvgPicture.asset(AppImages.walkingIcon)),
    EventProject(
     title: 'Meeting Team X', subTitle: 'April 15th, 2025', 
     onPressed: (){}, buttonText: Text('Join Challenge',
     style: bodySmall.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteTextColor
     ) ), 
     icon1: SvgPicture.asset(AppImages.runnngIcon)),

  ];

   var userList = <UserModel>[
    UserModel(name: 'Jacob Banks', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: true ),
    UserModel(name: 'Mary Jane', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pic2.svg', isFollowing: false),
    UserModel(name: 'Arthur Milo', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pics3.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic4.svg', isFollowing: true ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pic5.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic6.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic7.svg', isFollowing: true),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: true),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: true ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: true ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: true),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: true),
  ].obs;


     var sugestedFollowers = <UserModel>[
    UserModel(name: 'Amina TiTi', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false ),
    UserModel(name: 'Aisha Grace', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pic2.svg', isFollowing: false),
    UserModel(name: 'Arthur Milo', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pics3.svg',isFollowing: false ),
    UserModel(name: 'Amaka Phillips', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic4.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'aasset/svgs/profile_pic5.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic6.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic7.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg',isFollowing: false ),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false),
    UserModel(name: 'Lucy Peter', email: 'great@gmail.com', profilePicture: 'asset/svgs/profile_pic1.svg', isFollowing: false),
  ].obs;