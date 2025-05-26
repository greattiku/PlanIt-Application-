import 'package:flutter/material.dart';

class Followers extends StatefulWidget {
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 200,
      height: 200,
    );
  }
}