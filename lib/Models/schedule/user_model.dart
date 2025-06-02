import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? password;
  final String? phoneNumber;
  final String? profilePicture;
  bool isFollowing;

  UserModel({
    this.name,
    this.email,
    this.password,
    this.phoneNumber,
    this.profilePicture,
    this.isFollowing = false,
  });


}