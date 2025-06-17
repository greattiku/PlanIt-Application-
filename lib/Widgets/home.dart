import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plan_it/Constants/app_Strings.dart';
import 'package:plan_it/Widgets/categories.dart';
import 'package:plan_it/Widgets/event_project.dart';
import 'package:plan_it/Utilities/extensions.dart';
import '../Constants/colors.dart';
import '../Constants/custom_textstyles.dart';
import 'schedule.dart';
import '../Models/schedule/schedule_model.dart';

class Home extends StatefulWidget {
  const Home({super.key,
  });
 
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0XFF000D0D),
                  hintText: 'Search your category',
                  hintStyle: titleSmall.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFFADADAD),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: AppColors.borderColor,
                      width: 1.0
                    )
                  )
                )
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text('Available Categories?',
            style: titleLargeBold.copyWith(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: const Color(0XFF000D0D),
            ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            
            SizedBox(
              height: 75,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                   // final Categories items = categories[index];
                    return Categories(
                      text: categories[index].text, 
                      pics: categories[index].pics);
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(
                  width: 10,
                );
              }, itemCount: categories.length),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Events / Projects',
                style: titleLarge.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                )
                ),
                TextButton(onPressed: (){}, 
                child: Text('See more',
                          style: titleSmall.copyWith(
                            color: AppColors.appPrimaryColor,
                            // fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return EventProject(
                    icon1: projects[index].icon1,
                    title: projects[index].title, 
                    subTitle: projects[index].subTitle, 
                    onPressed: projects[index].onPressed, 
                    buttonText: projects[index].buttonText);
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(width: 10,);
              }, 
              itemCount: projects.length
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today\'s Schedule ',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )
                ),
                TextButton(onPressed: (){}, 
                child: Text('See more',
                          style: GoogleFonts.inter(
                            color: const Color(0XFF000980),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}





