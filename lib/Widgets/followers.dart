import 'package:flutter/material.dart';
import 'package:plan_it/Models/schedule/user_model.dart';
import 'package:plan_it/Utilities/extensions.dart';
import 'package:plan_it/Widgets/user_list.dart';
import '../../Constants/app_Strings.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Recent Followers'),
        SizedBox(height: 10.0.h,),
    
        ListView.builder(
          shrinkWrap: true,
          itemCount: user.length,
          itemBuilder: (context, index){
            final UserModel users = UserModel(
              name: user[index].name,
              profilePicture: user[index].profilePicture,
              isFollowing: user[index].isFollowing,
            );
            return UserList(userModel: users,);
          })
    ],
    );
  }
}