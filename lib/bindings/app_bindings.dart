import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/page_controllers.dart';


class MyBindings implements Bindings{
  @override
  void dependencies() {
   Get.put(PagesController(),permanent: true);
  }
  
}