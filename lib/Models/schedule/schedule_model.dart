import 'package:flutter/material.dart';

class ScheduleModel {
  final Widget? icon1;
  final String? title;
  final String? subTitle;
  final Widget? icon;
  final String? time;
  final String? progressLabel;
  final Widget? icon2;
  final String? km;
  final String? distance;
  final String? avgPace;
  final String? calories1;
  final String? calories2;

  ScheduleModel({
     this.icon1,
     this.title,
     this.subTitle,
     this.icon,
     this.time,
     this.progressLabel,
     this.icon2,
     this.km,
     this.distance,
     this.avgPace,
     this.calories1,
     this.calories2
  });
}