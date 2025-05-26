import 'package:flutter/material.dart';
import 'package:plan_it/Constants/app_strings.dart';
import 'package:plan_it/Constants/colors.dart';
import 'package:plan_it/Constants/custom_textstyles.dart';
import 'package:plan_it/Widgets/event_project.dart';

class Socials extends StatefulWidget {
  const Socials({super.key});

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Top Challenges',
            style: titleLarge.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                )
            ),
            TextButton(onPressed: (){}, 
            child: Text('See more',
            style: titleSmall.copyWith(
              color: AppColors.appPrimaryColor,
              fontSize: 15
            ),
            )),
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
      ],
    );
  }
}